//
//  UIImageView+STKit.h
//  IOS自定义常用控件
//
//  Created by shenzhaoliang on 15/2/26.
//  Copyright (c) 2015年 shundesoft. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 *  给UIImageView类添加许多有用的方法
 */
@interface UIImageView (BFKit)

/**
 *  给定图片、框架初始化UIImageView
 */
+ (id)initWithImage:(UIImage *)image
              frame:(CGRect)rect;

/**
 *  给定图片、尺寸、中心点初始化UIImageView
 */
+ (id)initWithImage:(UIImage *)image
               size:(CGSize)size
             center:(CGPoint)center;

@end
