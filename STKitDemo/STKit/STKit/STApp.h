//
//  STApp.h
//  IOS自定义常用控件
//
//  Created by shenzhaoliang on 15/2/14.
//  Copyright (c) 2015年 ST. All rights reserved.
//

@import Foundation;

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

//TODO:下面的方法还没有验证

/**
 *  Executes a block on first start of the App for current version.
 *  Remember to execute UI instuctions on main thread
 *
 *  @param block The block to execute, returns isFirstStartForCurrentVersion
 */
+ (void)onFirstStart:(void (^ _Nullable)(BOOL isFirstStart))block;

/**
 *  Executes a block on first start of the App.
 *  Remember to execute UI instuctions on main thread
 *
 *  @param block The block to execute, returns isFirstStart
 */
+ (void)onFirstStartForCurrentVersion:(void (^ _Nullable)(BOOL isFirstStartForCurrentVersion))block;

/**
 *  Executes a block on first start of the App for current given version.
 *  Remember to execute UI instuctions on main thread
 *
 *  @param version Version to be checked
 *  @param block   The block to execute, returns isFirstStartForVersion
 */
+ (void)onFirstStartForVersion:(NSString * _Nonnull)version
                         block:(void (^ _Nullable)(BOOL isFirstStartForCurrentVersion))block;

/**
 *  Returns if is the first start of the App
 *
 *  @return Returns if is the first start of the App
 */
+ (BOOL)isFirstStart;

/**
 *  Returns if is the first start of the App for current version
 *
 *  @return Returns if is the first start of the App for current version
 */
+ (BOOL)isFirstStartForCurrentVersion;

/**
 *  Returns if is the first start of the App for the given version
 *
 *  @param version Version to be checked
 *
 *  @return Returns if is the first start of the App for the given version
 */
+ (BOOL)isFirstStartForVersion:(NSString * _Nonnull)version;

@end
