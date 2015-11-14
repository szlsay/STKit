//
//  NSMutableDictionary+STKit.h
//  IOS自定义常用控件
//
//  Created by shenzhaoliang on 15/2/28.
//  Copyright (c) 2015年 shundesoft. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  给NSMutableDictionary类添加许多有用的方法
 */
@interface NSMutableDictionary (STKit)

/**
 *  设置在安全模式下给定键的对象（如果不 为零）
 */
- (BOOL)safeSetObject:(id)anObject
               forKey:(id<NSCopying>)aKey;

@end
