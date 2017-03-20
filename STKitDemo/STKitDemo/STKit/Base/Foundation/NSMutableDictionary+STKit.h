//
//  NSMutableDictionary+STKit.h
//  IOS自定义常用控件
//
//  Created by ST on 17/3/1.
//  Copyright © 2017年 ST. All rights reserved.
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
