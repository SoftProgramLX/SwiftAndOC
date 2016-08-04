//
//  LXHelpClass.m
//  OCAndSwift
//
//  Created by 李旭 on 16/8/4.
//  Copyright © 2016年 李旭. All rights reserved.
//

#import "LXHelpClass.h"

@implementation LXHelpClass

//设置圆形头像
+ (UIImage *)getEllipseImageWithImage:(UIImage *)originImage
{
    CGFloat padding = 2; // 圆形图像距离图像的边距
    UIColor *epsBackColor = [UIColor clearColor]; // 图像的背景色
    CGSize originsize = originImage.size;
    CGRect originRect = CGRectMake (0, 0, originsize.width, originsize.height);
    UIGraphicsBeginImageContext(originsize);
    CGContextRef ctx = UIGraphicsGetCurrentContext ();
    // 目标区域。
    CGRect desRect = CGRectMake(padding, padding,originsize.width-(padding*2), originsize.height-(padding*2));
    // 设置填充背景色。
    CGContextSetFillColorWithColor(ctx, epsBackColor. CGColor);
    UIRectFill(originRect); // 真正的填充
    // 设置椭圆变形区域。
    CGContextAddEllipseInRect(ctx,desRect);
    CGContextClip(ctx); // 截取椭圆区域。
    [originImage drawInRect:originRect]; // 将图像画在目标区域。
    UIImage *desImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return desImage;
}

@end
