//
//  Dock.m
//  MyTuanGou
//
//  Created by Louis on 11/24/14.
//  Copyright (c) 2014 Louis. All rights reserved.
//

#import "Dock.h"
#import "MoreItem.h"

@implementation Dock

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleHeight;
        
        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg_tabbar"]];
        
        // 1.添加Logo
        [self addLogo];
        
        // 2.添加more选项
        [self addMore];
    }
    
    return self;
}

#pragma mark - 添加Dock相关
- (void)addLogo
{
    UIImageView *logo = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ic_logo"]];
    CGFloat ratio = 0.7;
    logo.bounds = CGRectMake(0, 0, logo.image.size.width*ratio, logo.image.size.height*ratio);
    logo.center = CGPointMake(kDockItemW/2, kDockItemH/2);
    [self addSubview:logo];
}

- (void)addMore
{
    MoreItem *more = [[MoreItem alloc]init];
    CGRect frame = CGRectMake(0, self.frame.size.height - kDockItemH, 0, 0);
    more.frame = frame;

    [self addSubview:more];
}

// 从写setFrame，防止外部修改Frame
-(void)setFrame:(CGRect)frame
{
    frame.size.width = kDockItemW;
//    self.frame = frame;   // 很容易发生的错误
    [super setFrame:frame];
}
@end
