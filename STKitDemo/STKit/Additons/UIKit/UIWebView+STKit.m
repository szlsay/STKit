//
//  UIWebView+STKit.m
//  IOS自定义常用控件
//
//  Created by shenzhaoliang on 15/2/27.
//  Copyright (c) 2015年 shundesoft. All rights reserved.
//

#import "UIWebView+STKit.h"

@implementation UIWebView (STKit)
/* 移除背景阴影 */
- (void)removeBackgroundShadow
{
    for(UIView *eachSubview in [self.scrollView subviews])
    {
        if([eachSubview isKindOfClass:[UIImageView class]] && eachSubview.frame.origin.x <= 500)
        {
            eachSubview.hidden = YES;
            [eachSubview removeFromSuperview];
        }
    }
}

/* 加载网页 */
- (void)loadWebsite:(NSString *)website
{
    [self loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:website]]];
}

@end
