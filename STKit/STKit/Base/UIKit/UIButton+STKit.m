//
//  UIButton+STKit.m
//  IOS自定义常用控件
//
//  Created by ST on 17/3/1.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "UIButton+STKit.h"
#import "UIImage+STKit.h"
#import "UIColor+STKit.h"

@implementation UIButton (STKit)

/* 给定框架创建一个UIButton对象 */
+ (id)initWithFrame:(CGRect)frame
{
    return [UIButton initWithFrame:frame
                             title:nil];
}

/* 给定框架和字符串(字符串字体颜色默认是白色)创建一个UIButton对象 */
+ (id)initWithFrame:(CGRect)frame
              title:(NSString *)title
{
    return [UIButton initWithFrame:frame
                             title:title
                   backgroundImage:nil];
}

/* 给定框架、字符串和背景图片创建一个UIButton对象 */
+ (id)initWithFrame:(CGRect)frame
              title:(NSString *)title
    backgroundImage:(UIImage *)backgroundImage
{
    return [UIButton initWithFrame:frame
                             title:title
                   backgroundImage:backgroundImage
        highlightedBackgroundImage:nil];
}

/* 给定框架、字符串、背景图片和高亮背景图片创建一个UIButton对象 */
+ (id)initWithFrame:(CGRect)frame
              title:(NSString *)title
    backgroundImage:(UIImage *)backgroundImage
highlightedBackgroundImage:(UIImage *)highlightedBackgroundImage
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:frame];
    [button setTitle:title
            forState:UIControlStateNormal];
    [button setBackgroundImage:backgroundImage
                      forState:UIControlStateNormal];
    [button setBackgroundImage:highlightedBackgroundImage
                      forState:UIControlStateHighlighted];
    return button;
}

/* 给定框架、字符串、颜色创建一个UIButton对象 */
+ (id)initWithFrame:(CGRect)frame
              title:(NSString *)title
              color:(UIColor *)color
{
    // 返回与'色'关联的颜色组件（包括透明度)
    const CGFloat *components = CGColorGetComponents(color.CGColor);
    return [UIButton initWithFrame:frame
                             title:title
                   backgroundImage:[UIImage imageWithColor:color]
        highlightedBackgroundImage:[UIImage imageWithColor:[UIColor colorWithRed:components[0]-0.1
                                                                           green:components[1]-0.1
                                                                            blue:components[2]-0.1
                                                                           alpha:1]]];
}

/* 给定框架、字符串、背景颜色和高亮背景颜色创建一个UIButton对象 */
+ (id)initWithFrame:(CGRect)frame
              title:(NSString *)title
              color:(UIColor *)color
   highlightedColor:(UIColor *)highlightedColor
{
    return [UIButton initWithFrame:frame
                             title:title
                   backgroundImage:[UIImage imageWithColor:color]
        highlightedBackgroundImage:[UIImage imageWithColor:highlightedColor]];
}

/* 给定框架、颜色创建一个UIButton对象 */
+ (id)initWithFrame:(CGRect)frame
              color:(UIColor *)color
{
    // 返回与'色'关联的颜色组件（包括透明度)
    const CGFloat *components = CGColorGetComponents(color.CGColor);
    return [UIButton initWithFrame:frame
                             title:nil
                   backgroundImage:[UIImage imageWithColor:color]
        highlightedBackgroundImage:[UIImage imageWithColor:[UIColor colorWithRed:components[0]-0.1
                                                                           green:components[1]-0.1
                                                                            blue:components[2]-0.1
                                                                           alpha:1]]];
}

/* 给定框架、背景颜色和高亮背景颜色创建一个UIButton对象 */
+ (id)initWithFrame:(CGRect)frame
              color:(UIColor *)color
   highlightedColor:(UIColor *)highlightedColor
{
    return [UIButton initWithFrame:frame
                             title:nil
                   backgroundImage:[UIImage imageWithColor:color]
        highlightedBackgroundImage:[UIImage imageWithColor:highlightedColor]];
}

/* 给定框架和图片创建一个UIButton对象 */
+ (id)initWithFrame:(CGRect)frame
              image:(UIImage *)image
{
    return [UIButton initWithFrame:frame
                             image:image
                  highlightedImage:nil];
}

/* 给定框架、背景图片和高亮背景图片创建一个UIButton对象 */
+ (id)initWithFrame:(CGRect)frame
              image:(UIImage *)image
   highlightedImage:(UIImage *)highlightedImage
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:frame];
    [button setImage:image
            forState:UIControlStateNormal];
    [button setImage:highlightedImage
            forState:UIControlStateHighlighted];
    return button;
}

/* 设置字符字体和大小 */
- (void)setTitleFont:(FontName)fontName
                size:(CGFloat)size
{
    [self.titleLabel setFont:[UIFont fontForFontName:fontName
                                                size:size]];
}

/* 设置字符颜色 */
- (void)setTitleColor:(UIColor *)color
{
    [self setTitleColor:color
       highlightedColor:[UIColor colorWithColor:color
                                          alpha:0.4]];
}

/* 设置字符颜色和高亮颜色 */
- (void)setTitleColor:(UIColor *)color
     highlightedColor:(UIColor *)highlightedColor
{
    [self setTitleColor:color
               forState:UIControlStateNormal];
    [self setTitleColor:highlightedColor
               forState:UIControlStateHighlighted];
}
@end
