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
{
    UIImageView *_seperateLine;
    
}

@property (nonatomic, copy) NSString *icon; // 普通图片
@property (nonatomic, copy) NSString *selectedIcon; // 选中图片

- (void)setIcon:(NSString *)icon selectedIcon:(NSString *)selectedIcon;

@end
