//
//  Dock.m
//  MyTuanGou
//
//  Created by Louis on 11/24/14.
//  Copyright (c) 2014 Louis. All rights reserved.
//

#import "Dock.h"
#import "MoreItem.h"
#import "LocationItem.h"
#import "TabItem.h"

@interface Dock()
{
    NSMutableArray *_tabArr;  // tab 里包含的按钮数量
    TabItem *_selectedTab;  // 当前选中的Tab
}
@end

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
        
        // 3.添加定位标签
        [self addLocation];
        
        // 4.添加Table
        [self addTabItem];
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

- (void)addLocation
{
    LocationItem *location = [[LocationItem alloc]init];
    location.frame = CGRectMake(0, self.frame.size.height - 2*kDockItemH, 0, 0);
    [self addSubview:location];
}

// 从写setFrame，防止外部修改Frame
-(void)setFrame:(CGRect)frame
{
    frame.size.width = kDockItemW;
//    self.frame = frame;   // 很容易发生的错误
    [super setFrame:frame];
}

- (void)addTabItem
{
    // 1.初始化按钮
    _tabArr = [[NSMutableArray alloc]initWithObjects:@"ic_deal", @"ic_map", @"ic_collect", @"ic_mine",  nil];
    
    // 2. 添加按钮
    for (int i=0; i < _tabArr.count; i++) {
        NSString *str = [_tabArr objectAtIndex:i];
        NSString *str_highlight = [str stringByAppendingString:@"hl"];
        
        [self addOneTab:str selectedIcon:str_highlight Index:i];
    }
    
    // 3. 添加底部的横线
    UIImageView *seperateLine = [[UIImageView alloc]init];
    seperateLine.frame = CGRectMake(0, kDockItemH*(_tabArr.count+1), kDockItemW, 2);
    seperateLine.image = [UIImage imageNamed:@"separator_tabbar_item"];
    [self addSubview:seperateLine];
}

- (void) addOneTab:(NSString *)icon selectedIcon:(NSString *)selectedIcon Index:(NSInteger) index
{
    TabItem *tab = [[TabItem alloc]init];
    tab.frame = CGRectMake(0, kDockItemH * (index+1), 0, 0);
    [tab setIcon:icon selectedIcon:selectedIcon];
    tab.tag = index +1000;
    [tab addTarget:self action:@selector(tabClicked:) forControlEvents:UIControlEventTouchDown];
    [self addSubview:tab];
    
    if (index == 0) {
        [self tabClicked:tab];
    }
}

- (void) tabClicked:(TabItem *)tab
{
    if ([_delegate respondsToSelector:@selector(Dock:changeFrom:to:)]) {
        [_delegate Dock:self changeFrom:(_selectedTab.tag - 1000) to:(tab.tag - 1000)];
    }
    
    _selectedTab.enabled = YES;
    tab.enabled = NO;
    _selectedTab = tab;
}
@end
