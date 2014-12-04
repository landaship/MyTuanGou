//
//  NSString+YE.m
//  苏伊仕博客登录
//
//  Created by Louis on 14-7-8.
//  Copyright (c) 2014年 Louis. All rights reserved.
//

#import "NSString+YE.h"

@implementation  NSString (YE)

-(NSString * )appendFileName:(NSString *)append
{
    // 1. 获得文件扩展名
    NSString *ext = [self pathExtension];
    
    // 2.拼接文件名称
    NSString *imageName = [self stringByDeletingPathExtension];
    
    // 3. 合并拓展名
    imageName = [imageName stringByAppendingString:append];
    
    return [imageName stringByAppendingString:ext];
}

@end
