//
//  MoreItem.m
//  MyTuanGou
//
//  Created by Louis on 11/24/14.
//  Copyright (c) 2014 Louis. All rights reserved.
//

#import "MoreItem.h"
#import "MoreViewController.h"
#import "AVNavigationController.h"

@implementation MoreItem

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
         self.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleRightMargin;
        
          [self setIcon:@"ic_more" selectedIcon:@"ic_more_hl"];
        
        [self addTarget:self action:@selector(onClicked) forControlEvents:UIControlEventTouchDown];
        
         self.adjustsImageWhenDisabled = NO;
    }
    
    return self;
}

- (void) onClicked
{
    self.enabled = NO;
    
    MoreViewController *more = [[MoreViewController alloc]init];
    AVNavigationController *nv = [[AVNavigationController alloc]initWithRootViewController:more];
    more.moreItem = self;
    nv.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    nv.modalPresentationStyle = UIModalPresentationFormSheet;
    [self.window.rootViewController presentViewController:nv animated:YES completion:^{
        ;
    }];
}

@end
