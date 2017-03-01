//
//  NSDictionary+STKit.h
//  IOS自定义常用控件
//
//  Created by ST on 17/3/1.
//  Copyright © 2017年 ST. All rights reserved.
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
