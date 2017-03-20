//
//  NSProcessInfo+STKit.h
//  IOS自定义常用控件
//
//  Created by ST on 17/3/1.
//  Copyright © 2017年 ST. All rights reserved.
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
