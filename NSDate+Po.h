//
//  NSDate+Po.h
//  Weibo
//
//  Created by 郑欣 on 16/1/25.
//  Copyright © 2016年 运营网. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Po)
/** 是否为今天*/
-(BOOL)isToday;
/** 是否为昨天*/
-(BOOL)isYesterday;
/** 是否为今年*/
-(BOOL)isThisYear;
/** 获得和当前时间的差距*/
-(NSDateComponents *)deltaWithNow;

@end
