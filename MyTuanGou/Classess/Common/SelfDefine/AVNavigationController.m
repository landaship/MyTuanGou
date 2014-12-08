//
//  AVNavigationController.m
//  MyTuanGou
//
//  Created by Louis on 12/3/14.
//  Copyright (c) 2014 Louis. All rights reserved.
//

#import "AVNavigationController.h"
#import "UIImage+YE.h"

@interface AVNavigationController ()

@end

@implementation AVNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
}

+(void)initialize
{
    
    // 2.设置导航栏的背景图片 --背景图片高度不对导致的那个现象
    UINavigationBar *bar = [UINavigationBar appearance];
    [bar setBackgroundImage:[UIImage stretchImage:@"bg_navigation"] forBarMetrics:UIBarMetricsDefault];
    bar.translucent = NO;
    
    // 3.设置导航栏文字的主题
    //    [bar setTitleTextAttributes:@{
    //                                  NSForegroundColorAttributeName : [UIColor blackColor]
    //                                  UITextAttributeTextColor : [UIColor blackColor],
    //                                  UITextAttributeTextShadowOffset : [NSValue valueWithUIOffset:UIOffsetZero]
    //                                  }];
    
    // 4.修改所有UIBarButtonItem的外观
    UIBarButtonItem *barItem = [UIBarButtonItem appearance];
    
    // 5.修改item的背景图片
    [barItem setBackgroundImage:[UIImage imageNamed:@"bg_navigation_right"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [barItem setBackgroundImage:[UIImage imageNamed:@"bg_navigation_right_hl"] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
    
    // 修改item上面的文字样式
    //    NSDictionary *dict = @{
    //                           UITextAttributeTextColor : [UIColor darkGrayColor],
    //                           UITextAttributeTextShadowOffset : [NSValue valueWithUIOffset:UIOffsetZero]
    //                           };
    //    [barItem setTitleTextAttributes:dict forState:UIControlStateNormal];
    //    [barItem setTitleTextAttributes:dict forState:UIControlStateHighlighted];
    
    // 5.设置状态栏样式
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    // 他的Freame是320*480
    //    NSLog(@"%s Navigation的Frame:%@", __FUNCTION__,     NSStringFromCGRect(self.view.frame));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
