//
//  NSDictionary+STKit.m
//  IOS自定义常用控件
//
//  Created by ST on 17/3/1.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "NSDictionary+STKit.h"

@implementation NSDictionary (STKit)
/* 字典转JSON */
- (NSString *)dictionaryToJson {
    return [NSDictionary dictionaryToJson:self];
}

/* 字典转JSON */
+ (NSString *)dictionaryToJson:(NSDictionary *)dictionary {
    NSString *json     = nil;
    NSError  *error    = nil;
    NSData   *jsonData = [NSJSONSerialization dataWithJSONObject:dictionary
                                                         options:NSJSONWritingPrettyPrinted
                                                           error:&error];
    
    if (!jsonData) {
        return @"{}";
    } else if (!error) {
        json = [[NSString alloc] initWithData:jsonData
                                     encoding:NSUTF8StringEncoding];
        return json;
    } else {
        return error.localizedDescription;
    }
}

@end
