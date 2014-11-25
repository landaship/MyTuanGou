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

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor greenColor];

    [self addDock];
}

- (void)addDock
{
    Dock *dock = [[Dock alloc]init];
    CGRect frame = CGRectMake(0, kStatusBarH, 0, self.view.frame.size.height);
    dock.frame = frame;
    [self.view addSubview:dock];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
