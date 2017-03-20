//
//  NSMutableDictionary+STKit.m
//  IOS自定义常用控件
//
//  Created by ST on 17/3/1.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "NSMutableDictionary+STKit.h"

@implementation NSMutableDictionary (STKit)

/* 设置在安全模式下给定键的对象(如果不 为零) */
- (BOOL)safeSetObject:(id)anObject
               forKey:(id<NSCopying>)aKey
{
    if(nil == anObject)
    {
        return NO;
    }
    
    [self setObject:anObject
             forKey:aKey];
    return YES;
}

@end
