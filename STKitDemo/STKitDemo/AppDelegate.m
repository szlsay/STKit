//
//  AppDelegate.m
//  STKitDemo
//
//  Created by ST on 17/3/1.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "STApp.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [ViewController new];
    [self.window makeKeyAndVisible];
    
    NSLog(@"%s %@", __FUNCTION__, APP_Version);
    [STApp onFirstStart:^(BOOL isFirstStart) {
        
         NSLog(@"%s %@  %zd", __FUNCTION__, self , isFirstStart);
    }];
    return YES;
}

@end
