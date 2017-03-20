//
//  NSNumber+STKit.h
//  IOS自定义常用控件
//
//  Created by ST on 17/3/1.
//  Copyright © 2017年 ST. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;
/**
 *  给NSNumber类添加许多有用的方法
 */
@interface NSNumber (STKit)

#if __cplusplus
extern "C" {
#endif
/**
 *  角度转成弧度
 */
CGFloat DegreesToRadians(CGFloat degrees);
    
/**
 *  弧度转成角度
 */
CGFloat RadiansToDegrees(CGFloat radians);
#if _cplusplus
}
#endif

/**
 *  创建在给定范围之间的随机整数
 */
+ (NSInteger)randomIntBetweenMin:(NSInteger)minValue
                          andMax:(NSInteger)maxValue;

/**
 *  创建一个随机浮点值
 */
+ (CGFloat)randomFloat;

/**
 *  创建在给定范围之间的随机浮点数
 */
+ (CGFloat)randomFloatBetweenMin:(CGFloat)minValue
                          andMax:(CGFloat)maxValue;

@end
