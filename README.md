# NSDateCategory
为NSDate增加功能
增加了四个功能
 /** 是否为今天*/
-(BOOL)isToday;
/** 是否为昨天*/
-(BOOL)isYesterday;
/** 是否为今年*/
-(BOOL)isThisYear;
/** 获得和当前时间的差距*/
-(NSDateComponents *)deltaWithNow;
使用NSDate对象直接调用即可；
