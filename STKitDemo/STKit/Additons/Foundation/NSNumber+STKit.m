//
//  NSNumber+STKit.m
//  IOS自定义常用控件
//
//  Created by shenzhaoliang on 15/2/26.
//  Copyright (c) 2015年 shundesoft. All rights reserved.
//

#import "NSNumber+STKit.h"

@implementation NSNumber (STKit)
#if __cplusplus
extern "C" {
#endif
    /* 角度转成弧度 */
    CGFloat DegreesToRadians(CGFloat degrees) {return degrees * M_PI / 180;};
    /* 弧度转成角度 */
    CGFloat RadiansToDegrees(CGFloat radians) {return radians * 180 / M_PI;};
#if _cplusplus
}
#endif

/* 创建在给定范围之间的随机整数 */
+ (NSInteger)randomIntBetweenMin:(NSInteger)minValue
                          andMax:(NSInteger)maxValue
{
    return (NSInteger)(minValue + [self randomFloat] * (maxValue - minValue));
}

/* 创建一个随机浮点值 */
+ (CGFloat)randomFloat
{
    return (float) arc4random() / UINT_MAX;
}

/* 创建在给定范围之间的随机浮点数 */
+ (CGFloat)randomFloatBetweenMin:(CGFloat)minValue
                          andMax:(CGFloat)maxValue
{
    return (((float) (arc4random() % ((unsigned)RAND_MAX + 1)) / RAND_MAX) * (maxValue - minValue)) + minValue;
}

@end
