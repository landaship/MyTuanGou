//
//  UIImage+YE.h
//  苏伊仕博客登录
//
//  Created by Louis on 14-6-20.
//  Copyright (c) 2014年 Louis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (YE)
-(void)autoAdaptedImage:(NSString *)imgName;

// 自动拉伸图片
+(UIImage *)stretchImage:(NSString *)imageName;

+(UIImage *)stretchImage:(NSString *)imageName xRatio:(CGFloat)xRatio yRatio:(CGFloat)yRatio;
@end
