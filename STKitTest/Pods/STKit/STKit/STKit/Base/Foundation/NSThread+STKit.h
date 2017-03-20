//
//  NSThread+STKit.h
//  IOS自定义常用控件
//
//  Created by ST on 17/3/1.
//  Copyright © 2017年 ST. All rights reserved.
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
