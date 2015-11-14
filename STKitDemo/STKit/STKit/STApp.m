//
//  STApp.m
//  IOS自定义常用控件
//
//  Created by shenzhaoliang on 15/2/14.
//  Copyright (c) 2015年 shundesoft. All rights reserved.
//

#import "STApp.h"

NSString *const STBundleDisplayName        = @"CFBundleDisplayName";
NSString *const STBundleVersion            = @"CFBundleVersion";
NSString *const STBundleShortVersionString = @"CFBundleShortVersionString";



static NSString *STHasBeenOpened = @"STHasBeenOpened";
static NSString *STHasBeenOpenedForCurrentVersion = @"";


@implementation STApp

+ (void)onFirstStart:(void (^)(BOOL isFirstStart))block
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL hasBeenOpened = [defaults boolForKey:STHasBeenOpened];
    if(!hasBeenOpened)
    {
        [defaults setBool:YES forKey:STHasBeenOpened];
        [defaults synchronize];
    }
    
    block(!hasBeenOpened);
}

+ (void)onFirstStartForCurrentVersion:(void (^)(BOOL isFirstStartForCurrentVersion))block
{
    STHasBeenOpenedForCurrentVersion = [NSString stringWithFormat:@"STHasBeenOpened%@", APP_VERSION];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL hasBeenOpenedForCurrentVersion = [defaults boolForKey:STHasBeenOpenedForCurrentVersion];
    if(!hasBeenOpenedForCurrentVersion)
    {
        [defaults setBool:YES forKey:STHasBeenOpenedForCurrentVersion];
        [defaults synchronize];
    }
    
    block(!hasBeenOpenedForCurrentVersion);
}

@end
