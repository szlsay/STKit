//
//  STApp.m
//  IOS自定义常用控件
//
//  Created by shenzhaoliang on 15/2/14.
//  Copyright (c) 2015年 shundesoft. All rights reserved.
//

#import "STApp.h"

NSString *const STBundleName               = @"CFBundleName";
NSString *const STBundleVersion            = @"CFBundleVersion";
NSString *const STBundleShortVersionString = @"CFBundleShortVersionString";


static NSString  *STHasBeenOpened                  = @"STHasBeenOpened";
static NSString  *STHasBeenOpenedForCurrentVersion = @"";


@implementation STApp

+ (void)onFirstStart:(void (^ _Nullable)(BOOL isFirstStart))block {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL hasBeenOpened = [defaults boolForKey:STHasBeenOpened];
    if (hasBeenOpened != true) {
        [defaults setBool:YES forKey:STHasBeenOpened];
        [defaults synchronize];
    }
    
    block(!hasBeenOpened);
}

+ (void)onFirstStartForCurrentVersion:(void (^ _Nullable)(BOOL isFirstStartForCurrentVersion))block {
    STHasBeenOpenedForCurrentVersion = [NSString stringWithFormat:@"%@%@", STHasBeenOpened, APP_Version];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL hasBeenOpenedForCurrentVersion = [defaults boolForKey:STHasBeenOpenedForCurrentVersion];
    if (hasBeenOpenedForCurrentVersion != true) {
        [defaults setBool:YES forKey:STHasBeenOpenedForCurrentVersion];
        [defaults synchronize];
    }
    
    block(!hasBeenOpenedForCurrentVersion);
}

+ (void)onFirstStartForVersion:(NSString * _Nonnull)version block:(void (^ _Nullable)(BOOL isFirstStartForCurrentVersion))block {
    NSString *STHasBeenOpenedForVersion = [NSString stringWithFormat:@"%@%@", STHasBeenOpened, version];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL hasBeenOpenedForVersion = [defaults boolForKey:STHasBeenOpenedForCurrentVersion];
    if (hasBeenOpenedForVersion != true) {
        [defaults setBool:YES forKey:STHasBeenOpenedForVersion];
        [defaults synchronize];
    }
    
    block(!hasBeenOpenedForVersion);
}

+ (BOOL)isFirstStart {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL hasBeenOpened = [defaults boolForKey:STHasBeenOpened];
    if (hasBeenOpened != true) {
        return YES;
    } else {
        return NO;
    }
}

+ (BOOL)isFirstStartForCurrentVersion {
    STHasBeenOpenedForCurrentVersion = [NSString stringWithFormat:@"%@%@", STHasBeenOpened, APP_Version];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL hasBeenOpenedForCurrentVersion = [defaults boolForKey:STHasBeenOpenedForCurrentVersion];
    if (hasBeenOpenedForCurrentVersion != true) {
        return YES;
    } else {
        return NO;
    }
}

+ (BOOL)isFirstStartForVersion:(NSString * _Nonnull)version {
    NSString *STHasBeenOpenedForVersion = [NSString stringWithFormat:@"%@%@", STHasBeenOpened, version];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL hasBeenOpenedForVersion = [defaults boolForKey:STHasBeenOpenedForVersion];
    if (hasBeenOpenedForVersion != true) {
        return YES;
    } else {
        return NO;
    }
}

@end

