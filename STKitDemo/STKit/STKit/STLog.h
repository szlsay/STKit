//
//  STLog.h
//  IOS自定义常用控件
//
//  Created by shenzhaoliang on 15/2/26.
//  Copyright (c) 2015年 shundesoft. All rights reserved.
//

#import <Foundation/Foundation.h>

void ExtendNSLog(const char *file, int lineNumber, const char *functionName, NSString *format, ...);

@interface STLog : NSObject

/**
 *  NSLog仅在调试模式
 */
#ifdef DEBUG
#define STLog(args ...) ExtendNSLog(__FILE__, __LINE__, __PRETTY_FUNCTION__, args);
#define STLogString [STLog logString]
#define STLogClear [STLog clearLog]
#else
#define STLog(args ...)
#define STLogString
#define STLogClear
#endif

/**
 *  清除日志字符串.
 *  可以用STLogClear宏调用它
 */
+ (void)clearLog;

/**
 *  获取日志字符串.
 *  可以用STLogString宏调用它
 */
+ (NSString *)logString;


@end
