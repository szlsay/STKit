//
//  UIImageView+STKit.h
//  IOS自定义常用控件
//
//  Created by ST on 17/3/1.
//  Copyright © 2017年 ST. All rights reserved.
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
