//
//  NSThread+STKit.h
//  IOS自定义常用控件
//
//  Created by shenzhaoliang on 15/2/28.
//  Copyright (c) 2015年 shundesoft. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  给NSThread类添加许多有用的方法
 */
@interface NSThread (STKit)

/**
 *  运行在主线程
 */
//NS_INLINE void runOnMainThread(void (^block)(void))
//{
//    dispatch_async(dispatch_get_main_queue(), ^{
//        block();
//    });
//}

@end
