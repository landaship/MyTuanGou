//
//  TabItem.m
//  MyTuanGou
//
//  Created by Louis on 12/2/14.
//  Copyright (c) 2014 Louis. All rights reserved.
//

#import "TabItem.h"
@interface TabItem()
{

}
@end

@implementation TabItem

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // 设置背景图片
        [self setBackgroundImage:[UIImage imageNamed:@"bg_tabbar_item"]  forState:UIControlStateDisabled];
    }
    return self;
}

-(void)setEnabled:(BOOL)enabled
{
    _seperateLine.hidden = !enabled;
    [super setEnabled:enabled];
}

@end
