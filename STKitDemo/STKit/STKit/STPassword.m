//
//  STPassword.m
//  IOS自定义常用控件
//
//  Created by shenzhaoliang on 15/2/28.
//  Copyright (c) 2015年 shundesoft. All rights reserved.
//

#import "STPassword.h"

@implementation STPassword

+ (PasswordStrengthLevel)checkPasswordStrength:(NSString *)password
{
    NSInteger length = [password length];
    int lowercase = [self countLowercaseLetters:password];
    int uppercase = [self countUppercaseLetters:password];
    int numbers = [self countNumbers:password];
    int symbols = [self countSymbols:password];
    
    int score = 0;
    
    if(length < 5)
        score += 5;
    else
        if(length > 4 && length < 8)
            score += 10;
        else
            if(length > 7)
                score += 20;
    
    if(numbers == 1)
        score += 10;
    else
        if(numbers == 2)
            score += 15;
        else
            if(numbers > 2)
                score += 20;
    
    if(symbols == 1)
        score += 10;
    else
        if(symbols == 2)
            score += 15;
        else
            if(symbols > 2)
                score += 20;
    
    if(lowercase == 1)
        score += 10;
    else
        if(lowercase == 2)
            score += 15;
        else
            if(lowercase > 2)
                score += 20;
    
    if(uppercase == 1)
        score += 10;
    else
        if(uppercase == 2)
            score += 15;
        else
            if(uppercase > 2)
                score += 20;
    
    if(score == 100)
        return PasswordStrengthLevelVerySecure;
    else
        if (score >= 90)
            return PasswordStrengthLevelSecure;
        else
            if (score >= 80)
                return PasswordStrengthLevelVeryStrong;
            else
                if (score >= 70)
                    return PasswordStrengthLevelStrong;
                else
                    if (score >= 60)
                        return PasswordStrengthLevelAverage;
                    else
                        if (score >= 50)
                            return PasswordStrengthLevelWeak;
                        else
                            return PasswordStrengthLevelVeryWeak;
}

/* 小写字母字符数量 */
+ (int)countLowercaseLetters:(NSString *)password
{
    int count = 0;
    
    for (int i = 0; i < [password length]; i++)
    {
        BOOL isLowercase = [[NSCharacterSet lowercaseLetterCharacterSet] characterIsMember:[password characterAtIndex:i]];
        if(isLowercase == YES)
            count++;
    }
    
    return count;
}

/* 大写字母字符数量 */
+ (int)countUppercaseLetters:(NSString *)password
{
    int count = 0;
    
    for (int i = 0; i < [password length]; i++)
    {
        BOOL isUppercase = [[NSCharacterSet uppercaseLetterCharacterSet] characterIsMember:[password characterAtIndex:i]];
        if(isUppercase == YES)
            count++;
    }
    
    return count;
}

/* 数字字符数量 */
+ (int)countNumbers:(NSString *)password
{
    int count = 0;
    
    for (int i = 0; i < [password length]; i++)
    {
        BOOL isNumber = [[NSCharacterSet characterSetWithCharactersInString:@"0123456789"] characterIsMember:[password characterAtIndex:i]];
        if(isNumber == YES)
            count++;
    }
    
    return count;
}

/* 符号字符数量 */
+ (int)countSymbols:(NSString *)password
{
    int count = 0;
    
    for (int i = 0; i < [password length]; i++)
    {
        BOOL isSymbol = [[NSCharacterSet characterSetWithCharactersInString:@"`~!?@#$€£¥§%^&*()_+-={}[]:\";<>'•\\|/"] characterIsMember:[password characterAtIndex:i]];
        if(isSymbol == YES)
            count++;
    }
    
    return count;
}

@end
