//
//  NSArray+STKit.h
//  IOS自定义常用控件
//
//  Created by ST on 17/3/1.
//  Copyright © 2017年 ST. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  给NSArray类添加许多有用的方法
 */
@interface NSArray (STKit)

/**
 *  获取在安全模式下给定索引的对象（如果自身是空的则无）
 */
- (id)safeObjectAtIndex:(NSUInteger)index;

/**
 *  创建反向数组
 */
- (NSArray *)reversedArray;

/**
 *  转换成JSON的NSString
 */
- (NSString *)arrayToJson;

/**
 *  模拟阵列当作一个圆。当它超出范围，重新开始
 */
- (id)objectAtCircleIndex:(NSInteger)index;

/**
 *  将指定的数组创建反向数组
 */
+ (NSArray *)reversedArray:(NSArray *)array;

/**
 *  将指定的数组转换成JSON的NSString
 */
+ (NSString *)arrayToJson:(NSArray *)array;

@end
