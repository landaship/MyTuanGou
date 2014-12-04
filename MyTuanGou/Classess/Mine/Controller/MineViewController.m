//
//  MineViewController.m
//  MyTuanGou
//
//  Created by Louis on 12/3/14.
//  Copyright (c) 2014 Louis. All rights reserved.
//

#import "MineViewController.h"
#import "UIBarButtonItem+YE.h"

@interface MineViewController ()

@end

@implementation MineViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationItem.title = @"我的";
    self.view.backgroundColor = [UIColor greenColor];
    
    UIBarButtonItem *returnBack = [[UIBarButtonItem alloc]initWithTitle: @"退出登录" style:UIBarButtonItemStylePlain target:self  action:@selector(returnBack:)];
    
    self.navigationItem.rightBarButtonItem = returnBack;
}

- (void)returnBack:(UIBarButtonItem *)item
{
    NSLog(@"on clicked back...");
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
