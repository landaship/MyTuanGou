//
//  MoreItem.m
//  MyTuanGou
//
//  Created by Louis on 11/24/14.
//  Copyright (c) 2014 Louis. All rights reserved.
//

#import "MoreItem.h"

@implementation MoreItem

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
         self.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleRightMargin;
        
          [self setIcon:@"ic_more" selectedIcon:@"ic_more_hl"];
        
         self.adjustsImageWhenDisabled = NO;
    }
    
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
