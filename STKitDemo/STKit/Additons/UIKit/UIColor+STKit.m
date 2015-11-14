//
//  UIColor+STKit.m
//  IOS自定义常用控件
//
//  Created by shenzhaoliang on 15/2/13.
//  Copyright (c) 2015年 shundesoft. All rights reserved.
//

#import "UIColor+STKit.h"

@implementation UIColor (STKit)

/*  从HEX字符串得到一个UIColor对象 */
+ (UIColor *)colorWithHexString:(NSString *)hexString
{
    // 获取目标字符串，替换字符并转换成大写字符串
    NSString *colorString = [[hexString stringByReplacingOccurrencesOfString:@"#"
                                                                  withString:@""] uppercaseString];
    CGFloat alpha, red, blue, green;
    switch([colorString length])
    {
        case 3: // #RGB
            alpha = 1.0f;
            red   = [self colorComponentFrom:colorString
                                       start:0
                                      length:1];
            green = [self colorComponentFrom:colorString
                                       start:1
                                      length:1];
            blue  = [self colorComponentFrom:colorString
                                       start:2
                                      length:1];
            break;
        case 4: // #ARGB
            alpha = [self colorComponentFrom:colorString
                                       start:0
                                      length:1];
            red   = [self colorComponentFrom:colorString
                                       start:1
                                      length:1];
            green = [self colorComponentFrom:colorString
                                       start:2
                                      length:1];
            blue  = [self colorComponentFrom:colorString
                                       start:3
                                      length:1];
            break;
        case 6: // #RRGGBB
            alpha = 1.0f;
            red   = [self colorComponentFrom:colorString
                                       start:0
                                      length:2];
            green = [self colorComponentFrom:colorString
                                       start:2
                                      length:2];
            blue  = [self colorComponentFrom:colorString
                                       start:4
                                      length:2];
            break;
        case 8: // #AARRGGBB
            alpha = [self colorComponentFrom:colorString
                                       start:0
                                      length:2];
            red   = [self colorComponentFrom:colorString
                                       start:2
                                      length:2];
            green = [self colorComponentFrom:colorString
                                       start:4
                                      length:2];
            blue  = [self colorComponentFrom:colorString
                                       start:6
                                      length:2];
            break;
        default: // 抛出异常
            [NSException raise:@"无效的颜色值"
                        format:@"颜色值%@是无效的. 正确的格式是#RBG、#ARGB、#RRGGBB或#AARRGGBB", hexString];
            break;
    }
    return [UIColor colorWithRed:red
                           green:green
                            blue:blue
                           alpha:alpha];
}

/* 获取字符，转换数据类型 */
+ (CGFloat)colorComponentFrom:(NSString *)string
                        start:(NSUInteger)start
                       length:(NSUInteger)length
{
    // 截取字符
    NSString *substring = [string substringWithRange:NSMakeRange(start, length)];
    NSString *doubleSubstring = [NSString stringWithFormat:@"%@%@", substring, substring];
    NSString *fullHex = (length == 2 ? substring : doubleSubstring);
    unsigned hexComponent;
    // 字符转成hex，可选前缀为“0x”或“ 0X ”
    [[NSScanner scannerWithString:fullHex] scanHexInt:&hexComponent];
    
    return hexComponent / 255.0;
}

/*  从HEX数值得到一个UIColor对象 */
+ (id)colorWithHex:(unsigned int)hex
{
    return [UIColor colorWithHex:hex
                           alpha:1.0];
}

/*  从HEX数值和Alpha数值得到一个UIColor对象 */
+ (id)colorWithHex:(unsigned int)hex
             alpha:(float)alpha
{
    return [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16)) / 255.0
                           green:((float)((hex & 0xFF00) >> 8)) / 255.0
                            blue:((float)(hex & 0xFF)) / 255.0
                           alpha:alpha];
}

/* 创建一个随机UIColor对象 */
+ (UIColor *)randomColor
{
    int r = arc4random() % 255;
    int g = arc4random() % 255;
    int b = arc4random() % 255;
    
    return [UIColor colorWithRed:r/255.0
                           green:g/255.0
                            blue:b/255.0
                           alpha:1.0];
}

/*  从已知UIColor对象和Alpha对象得到一个UIColor对象 */
+ (UIColor *)colorWithColor:(UIColor *)color
                      alpha:(float)alpha
{
    if([color isEqual:[UIColor whiteColor]])
        return [UIColor colorWithWhite:1.000
                                 alpha:alpha];
    if([color isEqual:[UIColor blackColor]])
        return [UIColor colorWithWhite:0.000
                                 alpha:alpha];
    
    // 使用CGColorGetComponents方法，获取'color'关联的颜色组件
    const CGFloat *components = CGColorGetComponents(color.CGColor);
    return [UIColor colorWithRed:components[0]
                           green:components[1]
                            blue:components[2]
                           alpha:alpha];
}


@end
