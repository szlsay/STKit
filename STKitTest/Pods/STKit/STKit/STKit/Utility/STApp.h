//
//  STApp.h
//  IOS自定义常用控件
//
//  Created by shenzhaoliang on 15/2/14.
//  Copyright (c) 2015年 ST. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 *  1.获取App名字
 */
#define APP_Name [[[NSBundle mainBundle] infoDictionary] objectForKey:STBundleName]

/**
 *  2.获取App版本号
 */
#define APP_Version [[[NSBundle mainBundle] infoDictionary] objectForKey:STBundleVersion]

/**
 *  3.获取App短式版本号
 */
#define APP_VersionShort [[[NSBundle mainBundle] infoDictionary] objectForKey:STBundleShortVersionString]

/**
 *  4.使用STLocalizedString检索本地化字符串
 */
#define STLocalizedString(key, comment) \
[[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:@"STKit"]

/**
 *  5.获取AppDelegate
 */
#define APPDelegate ((AppDelegate *)[[UIApplication sharedApplication] delegate])

FOUNDATION_EXPORT NSString * _Nonnull const STBundleName;
FOUNDATION_EXPORT NSString * _Nonnull const STBundleVersion;
FOUNDATION_EXPORT NSString * _Nonnull const STBundleShortVersionString;

@interface STApp : NSObject

/**
 *  第一次启动应用程序的Block
 */
+ (void)onFirstStart:(void (^ _Nullable)(BOOL isFirstStart))block;

/**
 *  第一次启动当前的应用程序的Block
 */
+ (void)onFirstStartForCurrentVersion:(void (^ _Nullable)(BOOL isFirstStartForCurrentVersion))block;

/**
 *  第一次启动指定的应用程序的Block
 */
+ (void)onFirstStartForVersion:(NSString * _Nonnull)version
                         block:(void (^ _Nullable)(BOOL isFirstStartForCurrentVersion))block;

/**
 *  是否第一次执行APP
 */
+ (BOOL)isFirstStart;

/**
 *  是否第一次执行当前版本的APP
 */
+ (BOOL)isFirstStartForCurrentVersion;

/**
 *  是否第一次执行指定版本的APP
 */
+ (BOOL)isFirstStartForVersion:(NSString * _Nonnull)version;

@end

NS_ASSUME_NONNULL_END
