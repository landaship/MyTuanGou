//
//  BaseItem.h
//  MyTuanGou
//
//  Created by Louis on 11/24/14.
//  Copyright (c) 2014 Louis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FrameHeader.h"

@interface BaseItem : UIButton

- (void)setIcon:(NSString *)icon selectedIcon:(NSString *)selectedIcon;
- (void)setIcon:(NSString *)icon;
- (void)setSelectedIcon:(NSString *)selectedIcon;

@end
