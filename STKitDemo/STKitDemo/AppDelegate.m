//
//  AppDelegate.m
//  STKitDemo
//
//  Created by ST on 15/10/29.
//  Copyright © 2015年 shentian. All rights reserved.
//

#import "AppDelegate.h"
#import "MainController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // 1.创建开始的UI视图
    [self setupUI];
    
    return YES;
}

/**
 *  1.创建开始的UI视图
 */
- (void)setupUI{
    
    // 1.初始化UIWindow
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.window setBackgroundColor:[UIColor whiteColor]];
    
    // 2.设置根视图
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:[MainController new]];
    self.window.rootViewController = nav;
    
    // 3.显示窗口
    [self.window makeKeyAndVisible];
    
}



@end
