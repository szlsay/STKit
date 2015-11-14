//
//  NSProcessInfo+STKit.h
//  IOS自定义常用控件
//
//  Created by shenzhaoliang on 15/2/28.
//  Copyright (c) 2015年 shundesoft. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  给NSProcessInfo类添加许多有用的方法
 */
@interface NSProcessInfo (STKit)

/**
 *  返回的CPU使用率
 */
+ (float)cpuUsage;

@end
