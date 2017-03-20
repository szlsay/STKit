//
//  UIImageView+STKit.m
//  IOS自定义常用控件
//
//  Created by ST on 17/3/1.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "UIImageView+STKit.h"

@implementation UIImageView (STKit)

/* 给定图片、框架初始化UIImageView */
+ (id)initWithImage:(UIImage *)image
              frame:(CGRect)rect
{
    UIImageView *_image = [[UIImageView alloc] init];
    [_image setFrame:rect];
    [_image setImage:image];
    return _image;
}

/* 给定图片、尺寸、中心点初始化UIImageView */
+ (id)initWithImage:(UIImage *)image
               size:(CGSize)size
             center:(CGPoint)center
{
    UIImageView *_image = [[UIImageView alloc] init];
    [_image setFrame:CGRectMake(0, 0, size.width, size.height)];
    [_image setImage:image];
    [_image setCenter:center];
    return _image;
}

@end
