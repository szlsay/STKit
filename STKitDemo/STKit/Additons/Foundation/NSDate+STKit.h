//
//  NSDate+STKit.h
//  IOS自定义常用控件
//
//  Created by shenzhaoliang on 15/2/27.
//  Copyright (c) 2015年 shundesoft. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  简化日期结构
 */
struct STDateInformation {
    NSInteger day;      // 日
    NSInteger month;    // 月
    NSInteger year;     // 年
    
    NSInteger weekday;  // 星期
    
    NSInteger minute;   // 分钟
    NSInteger hour;     // 小时
    NSInteger second;   // 秒数
    
};

typedef struct STDateInformation STDateInformation;

/**
 *  给NSDate类添加许多有用的方法
 */
@interface NSDate (STKit)

/**
 *  Create a NSDate with the yesterday date
 *
 *  @return Return a NSDate with the yesterday date
 */
+ (NSDate *)yesterday;

/**
 *  Get the month from today
 *
 *  @return Return the month
 */
+ (NSDate *)month;

/**
 *  Get the month from self
 *
 *  @return Return the month
 */
- (NSDate *)month;

/**
 *  Get the weekday number from self
 *
 *  @return Return weekday number
 *  [1 - Sunday]
 *  [2 - Monday]
 *  [3 - Tuerday]
 *  [4 - Wednesday]
 *  [5 - Thursday]
 *  [6 - Friday]
 *  [7 - Saturday]
 */
- (NSInteger)weekday;

/**
 *  Get the weekday as a localized string from self
 *
 *  @return Return weekday as a localized string
 *  [1 - Sunday]
 *  [2 - Monday]
 *  [3 - Tuerday]
 *  [4 - Wednesday]
 *  [5 - Thursday]
 *  [6 - Friday]
 *  [7 - Saturday]
 */
- (NSString *)dayFromWeekday;

/**
 *  Compare self with another date
 *
 *  @param anotherDate The another date to compare as NSDate
 *
 *  @return Return YES if is same day, NO if not
 */
- (BOOL)isSameDay:(NSDate *)anotherDate;

/**
 *  Get the months number between self and another date
 *
 *  @param toDate The another date
 *
 *  @return Return the months between the two dates
 */
- (NSInteger)monthsBetweenDate:(NSDate *)toDate;

/**
 *  Get the days number between self and another date
 *
 *  @param toDate The another date
 *
 *  @return Return the days between the two dates
 */
- (NSInteger)daysBetweenDate:(NSDate *)toDate;

/**
 *  Return if self is today
 *
 *  @return Return if self is today
 */
- (BOOL)isToday;

/**
 *  Add days to self
 *
 *  @param days The number of days to add
 *
 *  @return Return self by adding the gived days number
 */
- (NSDate *)dateByAddingDays:(NSUInteger)days;

/**
 *  Create an NSDate with other two NSDate objects.
 *  Taken from the first date: day, month and year.
 *  Taken from the second date: hours and minutes.
 *
 *  @param aDate The first date for date
 *  @param aTime The second date for time
 *
 *  @return Return the created NSDate
 */
+ (NSDate *)dateWithDatePart:(NSDate *)aDate
                 andTimePart:(NSDate *)aTime;

/**
 *  Get the month string from self
 *
 *  @return Return the month string
 */
- (NSString *)monthString;

/**
 *  Get the year string from self
 *
 *  @return Return the year string
 */
- (NSString *)yearString;

/**
 *  Get the month as a localized string from the given month number
 *
 *  @param month The month to be converted in string
 *  [1 - January]
 *  [2 - February]
 *  [3 - March]
 *  [4 - April]
 *  [5 - May]
 *  [6 - June]
 *  [7 - July]
 *  [8 - August]
 *  [9 - September]
 *  [10 - October]
 *  [11 - November]
 *  [12 - December]
 *
 *  @return Return the given month as a localized string
 */
+ (NSString *)monthStringWithMonthNumber:(NSInteger)month;

/**
 *  Get self as a STDateInformation structure
 *
 *  @return Return self as a STDateInformation structure
 */
- (STDateInformation)dateInformation;

/**
 *  Get self as a STDateInformation structure with a given time zone
 *
 *  @return Return self as a STDateInformation structure with a given time zone
 */
- (STDateInformation)dateInformationWithTimeZone:(NSTimeZone *)timezone;

/**
 *  Return a date from a given STDateInformation structure
 *
 *  @param info The STDateInformation to be converted
 *
 *  @return Return a NSDate from a given STDateInformation structure
 */
+ (NSDate *)dateFromDateInformation:(STDateInformation)info;

/**
 *  Return a date from a given STDateInformation structure with a given time zone
 *
 *  @param info The STDateInformation to be converted
 *
 *  @return Return a NSDate from a given STDateInformation structure with a given time zone
 */
+ (NSDate *)dateFromDateInformation:(STDateInformation)info
                           timeZone:(NSTimeZone *)timezone;

/**
 *  Get the given STDateInformation structure as a formatted string
 *
 *  @param info The STDateInformation to be formatted
 *
 *  @return Return a NSString in the following format:
 *  D/M/Y H:M:S
 *  Example: 15/10/2013 10:38:43
 */
+ (NSString *)dateInformationDescriptionWithInformation:(STDateInformation)info;

@end
