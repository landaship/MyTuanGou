//
//  MainViewController.m
//  MyTuanGou
//
//  Created by Louis on 11/24/14.
//  Copyright (c) 2014 Louis. All rights reserved.
//

#import "MainViewController.h"
#import "Dock.h"
#import "FrameHeader.h"
#import "DealViewController.h"
#import "MapViewController.h"
#import "CollectViewController.h"
#import "MineViewController.h"
#import "AVNavigationController.h"

@interface MainViewController () <DockDelegate>
{
    UIView *_contentView;
}
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor greenColor];

    // 1. 添加doclk
    [self addDock];
    
    // 2. 添加占位视图
    _contentView = [[UIView alloc]init];
    CGFloat w = self.view.frame.size.width - kDockItemW;
    CGFloat h = self.view.frame.size.height;
    _contentView.frame = CGRectMake(kDockItemW, kStatusBarH, w, h);
    _contentView.autoresizingMask = UIViewAutoresizingFlexibleRightMargin |UIViewAutoresizingFlexibleWidth;
    _contentView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:_contentView];
    
    // 添加控制器
    [self addControllers];
}

- (void)addDock
{
    Dock *dock = [[Dock alloc]init];
    CGRect frame = CGRectMake(0, kStatusBarH, 0, self.view.frame.size.height - kStatusBarH);
    dock.frame = frame;
    dock.delegate = self;
    [self.view addSubview:dock];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 添加控制器
- (void)addControllers
{
    //1.团购
    DealViewController *deal = [[DealViewController alloc]init];
    AVNavigationController *nav = [[AVNavigationController alloc]initWithRootViewController:deal];
    [self addChildViewController:nav];
    
    //2.地图
    MapViewController *map = [[MapViewController alloc]init];
    nav = [[AVNavigationController alloc]initWithRootViewController:map];
    [self addChildViewController:nav];
    
    //3.收藏
    CollectViewController *collect = [[CollectViewController alloc]init];
    nav = [[AVNavigationController alloc]initWithRootViewController:collect];
    [self addChildViewController:nav];
    
    //4.我的
    MineViewController *mine = [[MineViewController alloc]init];
    nav = [[AVNavigationController alloc]initWithRootViewController:mine];
    [self addChildViewController:nav];
    
    // 5.设置默认选中的窗口
    [self Dock:nil changeFrom:0 to:0];
}

- (void)Dock:(Dock *)dock changeFrom:(int)from to:(int)to
{
    // 1. 移除旧的控制视图
    UIViewController *old = self.childViewControllers[from];
    [old.view removeFromSuperview];
    
    //2.添加新的控制器视图
    UIViewController *new = self.childViewControllers[to];
    new.view.frame = _contentView.bounds;
    new.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [_contentView addSubview:new.view];
}

@end
