//
//  UIWebView+STKit.h
//  IOS自定义常用控件
//
//  Created by ST on 17/3/1.
//  Copyright © 2017年 ST. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  给UIWebView类添加许多有用的方法
 */
@interface UIWebView (STKit)

/**
 *  移除背景阴影
 */
- (void)removeBackgroundShadow;

/**
 *  加载网页
 */
- (void)loadWebsite:(NSString *)website;

@end
