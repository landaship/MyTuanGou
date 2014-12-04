//
//  UIImage+YE.m
//  苏伊仕博客登录
//
//  Created by Louis on 14-6-20.
//  Copyright (c) 2014年 Louis. All rights reserved.
//

#import "UIImage+YE.h"

@implementation UIImage (YE)

-(void)autoAdaptedImage:(NSString *)imgName
{
//    if (ISiPhone5) {
//        
//    }
}

+(UIImage *)stretchImage:(NSString *)imageName
{
    return [UIImage stretchImage:imageName xRatio:0.5 yRatio:0.5];
}

+ (UIImage *)stretchImage:(NSString *)imageName xRatio:(CGFloat)xRatio yRatio:(CGFloat)yRatio
{
    UIImage *image = [UIImage imageNamed:imageName];
    
    // 新方法
    //    return [image resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
    
    // 老方法
    return [image stretchableImageWithLeftCapWidth:image.size.width * xRatio   topCapHeight:image.size.height * yRatio];
}

@end
