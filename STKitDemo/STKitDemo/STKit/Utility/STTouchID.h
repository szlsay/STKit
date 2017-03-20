//
//  STTouchID.h
//  IOS自定义常用控件
//
//  Created by shenzhaoliang on 15/2/28.
//  Copyright (c) 2015年 st. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, TouchIDResult)
{
    TouchIDResultSuccess = 0,
    TouchIDResultError,
    TouchIDResultAuthenticationFailed,
    TouchIDResultUserCancel,
    TouchIDResultUserFallback,
    TouchIDResultSystemCancel,
    TouchIDResultPasscodeNotSet,
    TouchIDResultNotAvailable,
    TouchIDResultNotEnrolled
} NS_ENUM_AVAILABLE_IOS(8_0);

NS_CLASS_AVAILABLE_IOS(8_0) @interface STTouchID : NSObject

/**
 *  显示TouchID警示
 */
+ (void)showTouchIDAuthenticationWithReason:(NSString *)reason
                                 completion:(void (^)(TouchIDResult result))completion;
@end
