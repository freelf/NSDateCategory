//
//  NSDate+Po.m
//  Weibo
//
//  Created by 郑欣 on 16/1/25.
//  Copyright © 2016年 运营网. All rights reserved.
//

#import "NSDate+Po.h"

@implementation NSDate (Po)
/** 是否为今天*/
-(BOOL)isToday{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    int unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
    //获取当前时间年月日
    NSDateComponents *nowComps = [calendar components:unit fromDate:[NSDate date]];
    //获取自己时间的年月日
    NSDateComponents *selfComps = [calendar components:unit fromDate:self];
    
    return nowComps.year == selfComps.year && nowComps.month == selfComps.month && nowComps.day == selfComps.day;
}
/** 是否为昨天*/
-(BOOL)isYesterday{
   
    
    //获取当前时间年月日
    NSDate *nowDate = [[NSDate date]dateWithYMD];
    //获取自己时间的年月日
    NSDate *selfDate = [self dateWithYMD];
    //获取两个时间的差距
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *delat = [calendar components:NSCalendarUnitDay fromDate:selfDate toDate:nowDate options:0];
    
    return delat.day == 1;
}
-(NSDate *)dateWithYMD{
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"yyyy-MM-dd";
    NSString *selfStr = [formatter stringFromDate:self];
    return [formatter dateFromString:selfStr];
}
/** 是否为今年*/
-(BOOL)isThisYear{
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    // 1.获得当前时间的年月日
    NSDateComponents *nowComps = [calendar components:NSCalendarUnitYear fromDate:[NSDate date]];
     // 2.获得self的年月日
    NSDateComponents *selfComps = [calendar components:NSCalendarUnitYear fromDate:self];
    
    return nowComps.year == selfComps.year;
}
/** 获得和当前时间的差距*/
-(NSDateComponents *)deltaWithNow{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    int unit = NSCalendarUnitHour | NSCalendarUnitMinute |NSCalendarUnitSecond;
    NSDateComponents *comps = [calendar components:unit fromDate:self toDate:[NSDate date] options:0];
    return comps;
}
@end
