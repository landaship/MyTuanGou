//
//  Dock.h
//  MyTuanGou
//
//  Created by Louis on 11/24/14.
//  Copyright (c) 2014 Louis. All rights reserved.
//

#import <UIKit/UIKit.h>

#pragma mark - Dock 代理
@class Dock;
@protocol DockDelegate <NSObject>

@optional

- (void)Dock:(Dock *)dock changeFrom:(int)from to:(int)to;

@end

@interface Dock : UIView

@property (nonatomic, assign) id <DockDelegate> delegate;

@end
