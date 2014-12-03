//
//  LocationItem.m
//  MyTuanGou
//
//  Created by Louis on 11/25/14.
//  Copyright (c) 2014 Louis. All rights reserved.
//

#import "LocationItem.h"

#define kImageScale 0.5  // 图片大小比例

@implementation LocationItem


-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //1. 设置自动伸缩
        self.autoresizingMask = UIViewAutoresizingFlexibleTopMargin |UIViewAutoresizingFlexibleRightMargin;
        
        //2.设置图片
        [self setIcon:@"ic_district" selectedIcon:@"ic_district_hl"];
        
        // 3. 设置文字
        [self setTitle:@"定位" forState:UIControlStateNormal];
        [self setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [self setTitleColor:[UIColor whiteColor] forState:UIControlStateDisabled];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        
        // 4.设置图片属性
        self.imageView.contentMode = UIViewContentModeCenter;
    }
    
    return self;
}

// 调整按钮文字和图片的位置
- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat w = contentRect.size.width;
    CGFloat h = contentRect.size.height * kImageScale;
    return CGRectMake(0, 0, w, h);
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGFloat w = contentRect.size.width;
    CGFloat h = contentRect.size.height * (1 - kImageScale);
    CGFloat y = contentRect.size.height - h;
    return CGRectMake(0, y, w, h);
}


@end
