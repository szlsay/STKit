//
//  NSArray+STKit.m
//  IOS自定义常用控件
//
//  Created by shenzhaoliang on 15/2/26.
//  Copyright (c) 2015年 shundesoft. All rights reserved.
//

#import "NSArray+STKit.h"

@implementation NSArray (STKit)
/* 获取在安全模式下给定索引的对象（如果自身是空的则无 */
- (id)safeObjectAtIndex:(NSUInteger)index
{
    if([self count] > 0 && [self count] > index)
        return [self objectAtIndex:index];
    else
        return nil;
}

/* 创建反向数组 */
- (NSArray *)reversedArray
{
    return [NSArray reversedArray:self];
}

/* 转换成JSON的NSString */
- (NSString *)arrayToJson
{
    return [NSArray arrayToJson:self];
}

/* 当索引超出范围，重新设定索引 */
- (NSInteger)superCircle:(NSInteger)index
                 maxSize:(NSInteger)maxSize
{
    if(index < 0)
    {
        index = index % maxSize;
        index += maxSize;
    }
    if(index >= maxSize)
    {
        index = index % maxSize;
    }
    
    return index;
}

/* 模拟阵列当作一个圆。当它超出范围，重新开始 */
- (id)objectAtCircleIndex:(NSInteger)index
{
    return [self objectAtIndex:[self superCircle:index
                                         maxSize:self.count]];
}

/* 将指定的数组转换成JSON的NSString */
+ (NSString *)arrayToJson:(NSArray*)array
{
    NSString *json = nil;
    NSError *error = nil;
    // 生成一个Foundation对象JSON数据
    NSData *data = [NSJSONSerialization dataWithJSONObject:array
                                                   options:0
                                                     error:&error];
    if(!error)
    {
        json = [[NSString alloc] initWithData:data
                                     encoding:NSUTF8StringEncoding];
        return json;
    }
    else
        // 返回主用户显示消息的错误
        return error.localizedDescription;
}

/* 将指定的数组创建反向数组 */
+ (NSArray *)reversedArray:(NSArray*)array
{
    // 从一个阵列容量初始化阵列
    NSMutableArray *arrayTemp = [NSMutableArray arrayWithCapacity:[array count]];
    // 获取NSArray的逆序枚举器
    NSEnumerator *enumerator = [array reverseObjectEnumerator];
    
    for(id element in enumerator) [arrayTemp addObject:element];
    
    return arrayTemp;
}


@end
