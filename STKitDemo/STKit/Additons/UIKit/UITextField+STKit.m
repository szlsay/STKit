//
//  UITextField+STKit.m
//  IOS自定义常用控件
//
//  Created by shenzhaoliang on 15/2/27.
//  Copyright (c) 2015年 shundesoft. All rights reserved.
//

#import "UITextField+STKit.h"

@implementation UITextField (STKit)
/*  UITextField初始化 */
+ (UITextField *)initWithFrame:(CGRect)frame                // 结构
                   placeholder:(NSString *)placeholder      // 提示信息
                         color:(UIColor *)color             // 颜色
                          font:(FontName)fontName           // 字体
                          size:(float)size                  // 尺寸
                    returnType:(UIReturnKeyType)returnType  // 回车键行为
                  keyboardType:(UIKeyboardType)keyboardType // 键盘类型
                        secure:(BOOL)secure                 // 密码
                   borderStyle:(UITextBorderStyle)borderStyle               // 边框样式
            autoCapitalization:(UITextAutocapitalizationType)capitalization // 自动大写
            keyboardAppearance:(UIKeyboardAppearance)keyboardAppearence     // 键盘外观样式
 enablesReturnKeyAutomatically:(BOOL)enablesReturnKeyAutomatically          // 开启return键
               clearButtonMode:(UITextFieldViewMode)clearButtonMode         // 清除按钮类型
            autoCorrectionType:(UITextAutocorrectionType)autoCorrectionType // 自动更正风格
                      delegate:(id<UITextFieldDelegate>)delegate            // 委托
{
    UITextField *textField = [[UITextField alloc] initWithFrame:frame];
    [textField setBorderStyle:borderStyle];
    [textField setAutocorrectionType:autoCorrectionType];
    [textField setClearButtonMode:clearButtonMode];
    [textField setKeyboardType:keyboardType];
    [textField setAutocapitalizationType:capitalization];
    [textField setPlaceholder:placeholder];
    [textField setTextColor:color];
    [textField setReturnKeyType:returnType];
    [textField setEnablesReturnKeyAutomatically:enablesReturnKeyAutomatically];
    [textField setSecureTextEntry:secure];
    [textField setKeyboardAppearance:keyboardAppearence];
    [textField setFont:[UIFont fontForFontName:fontName size:size]];
    [textField setDelegate:delegate];
    return textField;
}
@end
