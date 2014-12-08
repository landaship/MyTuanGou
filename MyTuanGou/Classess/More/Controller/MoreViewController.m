//
//  MoreViewController.m
//  MyTuanGou
//
//  Created by Louis on 12/8/14.
//  Copyright (c) 2014 Louis. All rights reserved.
//

#import "MoreViewController.h"
#import "MoreItem.h"

@interface MoreViewController ()
{

}
@end

@implementation MoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"更多";
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"完成" style:UIBarButtonItemStylePlain target:self action:@selector(clicked)];
}

- (void) clicked
{
    _moreItem.enabled = YES;
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
