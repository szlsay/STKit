//
//  STApp.h
//  IOS自定义常用控件
//
//  Created by shenzhaoliang on 15/2/14.
//  Copyright (c) 2015年 shundesoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@import UIKit;

/**
 *  1.获取App名字
 */
#define APP_NAME [[[NSBundle mainBundle] infoDictionary] objectForKey:STBundleDisplayName]

/**
 *  2.获取App版本号
 */
#define APP_BUILD [[[NSBundle mainBundle] infoDictionary] objectForKey:STBundleVersion]

/**
 *  3.获取App短式版本号
 */
#define APP_VERSION [[[NSBundle mainBundle] infoDictionary] objectForKey:STBundleShortVersionString]

/**
 *  4.使用STLocalizedString检索本地化字符串
 */
#define STLocalizedString(key, comment) \
[[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:@"STKit"]

/**
 *  5.获取AppDelegate
 */
#define APP_DELEGATE ((AppDelegate *)[[UIApplication sharedApplication] delegate])


NSString *const STBundleDisplayName;
NSString *const STBundleVersion;
NSString *const STBundleShortVersionString;

@interface STApp : NSObject

/**
 *  Executes a block on first start of the App for current version.
 *  Remember to execute UI instuctions on main thread
 *
 *  @param block The block to execute, returns isFirstStartForCurrentVersion
 */
+ (void)onFirstStart:(void (^)(BOOL isFirstStart))block;

/**
 *  Executes a block on first start of the App.
 *  Remember to execute UI instuctions on main thread
 *
 *  @param block The block to execute, returns isFirstStart
 */
+ (void)onFirstStartForCurrentVersion:(void (^)(BOOL isFirstStartForCurrentVersion))block;

@end
