//
//  UIWebView+STKit.h
//  IOS自定义常用控件
//
//  Created by shenzhaoliang on 15/2/27.
//  Copyright (c) 2015年 shundesoft. All rights reserved.
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
