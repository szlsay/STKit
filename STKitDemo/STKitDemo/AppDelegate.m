//
//  AppDelegate.m
//  STKitDemo
//
//  Created by ST on 17/3/1.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "AppDelegate.h"
#import "UtilityController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    UITabBarController *tabBarVC = [[UITabBarController alloc]init];
    [tabBarVC addChildViewController:[[UINavigationController alloc] initWithRootViewController:[UtilityController new]]];
    self.window.rootViewController = tabBarVC;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
