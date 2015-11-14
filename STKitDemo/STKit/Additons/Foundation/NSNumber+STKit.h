//
//  NSNumber+STKit.h
//  IOS自定义常用控件
//
//  Created by shenzhaoliang on 15/2/26.
//  Copyright (c) 2015年 shundesoft. All rights reserved.
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
