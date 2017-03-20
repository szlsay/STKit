//
//  STPassword.h
//  IOS自定义常用控件
//
//  Created by shenzhaoliang on 15/2/28.
//  Copyright (c) 2015年 st. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  密码强度级别枚举，从0到6
 */
typedef NS_ENUM(NSInteger, PasswordStrengthLevel)
{
    PasswordStrengthLevelVeryWeak = 0,
    PasswordStrengthLevelWeak,
    PasswordStrengthLevelAverage,
    PasswordStrengthLevelStrong,
    PasswordStrengthLevelVeryStrong,
    PasswordStrengthLevelSecure,
    PasswordStrengthLevelVerySecure
};

/**
 *  这个类添加一些有用的管理密码方法
 */
@interface STPassword : NSObject

/**
 *  检查密码强度级别
 */
+ (PasswordStrengthLevel)passwordCheckStrength:(NSString *)password;
@end
