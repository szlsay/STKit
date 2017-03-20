//
//  NSDate+STKit.m
//  IOS自定义常用控件
//
//  Created by ST on 17/3/1.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "NSDate+STKit.h"
//#import "STApp.h"

@implementation NSDate (STKit)

/* 获取年 */
+ (NSDate *)yesterday
{
    STDateInformation inf = [[NSDate date] dateInformation];
    inf.day--;
    return [self dateFromDateInformation:inf];
}

/* 获取月 */
+ (NSDate *)month
{
    return [[NSDate date] month];
}

/* 获取月 */
- (NSDate *)month
{
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *comp = [gregorian components:(NSCalendarUnitYear | NSCalendarUnitMonth) fromDate:self];
    [comp setDay:1];
    NSDate *date = [gregorian dateFromComponents:comp];
    return date;
}

/*  */
- (NSInteger)weekday
{
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *comps = [gregorian components:(NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear | NSCalendarUnitWeekday) fromDate:self];
    NSInteger weekday = [comps weekday];
    return weekday;
}

/*  */
- (NSString *)dayFromWeekday
{
//    switch([self weekday])
//    {
//        case 1:
//            return STLocalizedString(@"SUNDAY", @"");
//            break;
//        case 2:
//            return STLocalizedString(@"MONDAY", @"");
//            break;
//        case 3:
//            return STLocalizedString(@"TUESDAY", @"");
//            break;
//        case 4:
//            return STLocalizedString(@"WEDNESDAY", @"");
//            break;
//        case 5:
//            return STLocalizedString(@"THURSDAY", @"");
//            break;
//        case 6:
//            return STLocalizedString(@"FRIDAY", @"");
//            break;
//        case 7:
//            return STLocalizedString(@"SATURDAY", @"");
//            break;
//        default:
//            break;
//    }
    
    return @"";
}

/*  */
- (NSDate *)timelessDate
{
    NSDate *day = self;
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *comp = [gregorian components:(NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay) fromDate:day];
    return [gregorian dateFromComponents:comp];
}

/*  */
- (NSDate *)monthlessDate
{
    NSDate *day = self;
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *comp = [gregorian components:(NSCalendarUnitYear | NSCalendarUnitMonth) fromDate:day];
    return [gregorian dateFromComponents:comp];
}

/*  */
- (BOOL)isSameDay:(NSDate *)anotherDate
{
    NSCalendar* calendar = [NSCalendar currentCalendar];
    NSDateComponents* components1 = [calendar components:(NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay) fromDate:self];
    NSDateComponents* components2 = [calendar components:(NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay) fromDate:anotherDate];
    return ([components1 year] == [components2 year] && [components1 month] == [components2 month] && [components1 day] == [components2 day]);
}

/*  */
- (NSInteger)monthsBetweenDate:(NSDate *)toDate
{
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    NSDateComponents *components = [gregorian components:NSCalendarUnitMonth
                                                fromDate:[self monthlessDate]
                                                  toDate:[toDate monthlessDate]
                                                 options:0];
    NSInteger months = [components month];
    return abs((int)months);
}

/*  */
- (NSInteger)daysBetweenDate:(NSDate *)toDate
{
    NSTimeInterval time = [self timeIntervalSinceDate:toDate];
    return fabs(time / 60 / 60 / 24);
}

/*  */
- (BOOL)isToday
{
    return [self isSameDay:[NSDate date]];
}

/*  */
- (NSDate *)dateByAddingDays:(NSUInteger)days
{
    NSDateComponents *c = [[NSDateComponents alloc] init];
    c.day = days;
    return [[NSCalendar currentCalendar] dateByAddingComponents:c toDate:self options:0];
}

/*  */
+ (NSDate *)dateWithDatePart:(NSDate *)aDate andTimePart:(NSDate *)aTime
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"dd/MM/yyyy"];
    NSString *datePortion = [dateFormatter stringFromDate:aDate];
    
    [dateFormatter setDateFormat:@"HH:mm"];
    NSString *timePortion = [dateFormatter stringFromDate:aTime];
    
    [dateFormatter setDateFormat:@"dd/MM/yyyy HH:mm"];
    NSString *dateTime = [NSString stringWithFormat:@"%@ %@",datePortion,timePortion];
    return [dateFormatter dateFromString:dateTime];
}

/*  */
- (NSString *)monthString
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MMMM"];
    return [dateFormatter stringFromDate:self];
}

/*  */
+ (NSString *)monthStringWithMonthNumber:(NSInteger)month
{
//    switch(month)
//    {
//        case 1:
//            return STLocalizedString(@"JANUARY", @"");
//            break;
//        case 2:
//            return STLocalizedString(@"FEBRUARY", @"");
//            break;
//        case 3:
//            return STLocalizedString(@"MARCH", @"");
//            break;
//        case 4:
//            return STLocalizedString(@"APRIL", @"");
//            break;
//        case 5:
//            return STLocalizedString(@"MAY", @"");
//            break;
//        case 6:
//            return STLocalizedString(@"JUNE", @"");
//            break;
//        case 7:
//            return STLocalizedString(@"JULY", @"");
//            break;
//        case 8:
//            return STLocalizedString(@"AUGUST", @"");
//            break;
//        case 9:
//            return STLocalizedString(@"SEPTEMBER", @"");
//            break;
//        case 10:
//            return STLocalizedString(@"OCTOBER", @"");
//            break;
//        case 11:
//            return STLocalizedString(@"NOVEMBER", @"");
//            break;
//        case 12:
//            return STLocalizedString(@"DECEMBER", @"");
//            break;
//        default:
//            return nil;
//            break;
//    }
    return @"";
}

/*  */
- (NSString *)yearString
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy"];
    return [dateFormatter stringFromDate:self];
}

/*  */
- (STDateInformation)dateInformationWithTimeZone:(NSTimeZone *)timezone
{
    STDateInformation info;
    
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    [gregorian setTimeZone:timezone];
    NSDateComponents *comp = [gregorian components:(NSCalendarUnitMonth | NSCalendarUnitMinute | NSCalendarUnitYear | NSCalendarUnitDay | NSCalendarUnitWeekday | NSCalendarUnitHour | NSCalendarUnitSecond) fromDate:self];
    info.day = [comp day];
    info.month = [comp month];
    info.year = [comp year];
    
    info.hour = [comp hour];
    info.minute = [comp minute];
    info.second = [comp second];
    
    
    info.weekday = [comp weekday];
    
    return info;
}

/*  */
- (STDateInformation)dateInformation
{
    STDateInformation info;
    
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *comp = [gregorian components:(NSCalendarUnitMonth | NSCalendarUnitMinute | NSCalendarUnitYear | NSCalendarUnitDay | NSCalendarUnitWeekday | NSCalendarUnitHour | NSCalendarUnitSecond) fromDate:self];
    info.day = [comp day];
    info.month = [comp month];
    info.year = [comp year];
    
    info.hour = [comp hour];
    info.minute = [comp minute];
    info.second = [comp second];
    
    info.weekday = [comp weekday];
    
    return info;
}

/*  */
+ (NSDate *)dateFromDateInformation:(STDateInformation)info timeZone:(NSTimeZone *)timezone
{
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    [gregorian setTimeZone:timezone];
    NSDateComponents *comp = [gregorian components:(NSCalendarUnitYear | NSCalendarUnitMonth) fromDate:[NSDate date]];
    
    [comp setDay:info.day];
    [comp setMonth:info.month];
    [comp setYear:info.year];
    [comp setHour:info.hour];
    [comp setMinute:info.minute];
    [comp setSecond:info.second];
    [comp setTimeZone:timezone];
    
    return [gregorian dateFromComponents:comp];
}

/*  */
+ (NSDate *)dateFromDateInformation:(STDateInformation)info
{
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *comp = [gregorian components:(NSCalendarUnitYear | NSCalendarUnitMonth) fromDate:[NSDate date]];
    
    [comp setDay:info.day];
    [comp setMonth:info.month];
    [comp setYear:info.year];
    [comp setHour:info.hour];
    [comp setMinute:info.minute];
    [comp setSecond:info.second];
    //[comp setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
    
    return [gregorian dateFromComponents:comp];
}

/*  */
+ (NSString *)dateInformationDescriptionWithInformation:(STDateInformation)info
{
    return [NSString stringWithFormat:@"%02li/%02li/%04li %02li:%02li:%02li", (long)info.month, (long)info.day, (long)info.year, (long)info.hour, (long)info.minute, (long)info.second];
}

@end
