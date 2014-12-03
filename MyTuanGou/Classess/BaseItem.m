//
//  BaseItem.m
//  MyTuanGou
//
//  Created by Louis on 11/24/14.
//  Copyright (c) 2014 Louis. All rights reserved.
//

#import "BaseItem.h"

@interface BaseItem()
{
    UIButton *_btn;
}
@end

@implementation BaseItem

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // 1.添加横线
        UIImageView *seperateLine = [[UIImageView alloc]init];
        seperateLine.frame = CGRectMake(0, 0, kDockItemW, 2);
        seperateLine.image = [UIImage imageNamed:@"separator_tabbar_item"];
        _seperateLine = seperateLine;
        [self addSubview:seperateLine];
    }
    
    return self;
}

-(void)setIcon:(NSString *)icon
{
    [self setImage:[UIImage imageNamed:icon] forState:UIControlStateNormal];
}

- (void)setSelectedIcon:(NSString *)selectedIcon
{
    [self  setImage:[UIImage imageNamed:selectedIcon] forState:UIControlStateDisabled];
}

-(void)setIcon:(NSString *)icon selectedIcon:(NSString *)selectedIcon
{
    self.icon = icon;
    self.selectedIcon = selectedIcon;
}

-(void)setFrame:(CGRect)frame
{
    frame.size = CGSizeMake(kDockItemW, kDockItemH);
    [super setFrame:frame];
}


- (void)setHighlighted:(BOOL)highlighted
{
    // 禁止高亮
}
@end
