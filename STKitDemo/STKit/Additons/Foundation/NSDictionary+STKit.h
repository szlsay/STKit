//
//  NSDictionary+STKit.h
//  IOS自定义常用控件
//
//  Created by shenzhaoliang on 15/2/27.
//  Copyright (c) 2015年 shundesoft. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  给NSDictionary类添加许多有用的方法
 */
@interface NSDictionary (STKit)

/**
 *  字典转JSON
 */
- (NSString *)dictionaryToJson;

/**
 *  字典转JSON
 */
+ (NSString *)dictionaryToJson:(NSDictionary *)dictionary;
@end
