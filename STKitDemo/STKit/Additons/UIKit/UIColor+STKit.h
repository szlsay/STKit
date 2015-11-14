//
//  UIColor+STKit.h
//  IOS自定义常用控件
//
//  Created by shenzhaoliang on 15/2/13.
//  Copyright (c) 2015年 shundesoft. All rights reserved.
//
@import UIKit;

/**
 *  给UIColor类添加许多有用的方法
 */
@interface UIColor (STKit)
/**
 *  返回一个RGBA格式的UIColor对象
 */
#define RGBA(r, g, b, a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]

/**
 *  返回一个RGB格式的UIColor对象
 */
#define RGB(r, g, b) RGBA(r, g, b, 1.0f)

/**
 *  从HEX字符串得到一个UIColor对象
 */
+ (UIColor *)colorWithHexString:(NSString *)hexString;

/**
 *  从HEX数值得到一个UIColor对象
 */
+ (UIColor *)colorWithHex:(unsigned int)hex;

/**
 *  从HEX数值和Alpha数值得到一个UIColor对象
 */
+ (UIColor *)colorWithHex:(unsigned int)hex
                    alpha:(float)alpha;

/**
 *  创建一个随机UIColor对象
 */
+ (UIColor *)randomColor;

/**
 *  从已知UIColor对象和Alpha对象得到一个UIColor对象
 */
+ (UIColor *)colorWithColor:(UIColor *)color
                      alpha:(float)alpha;
@end
