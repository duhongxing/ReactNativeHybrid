//
//  CalendarManager.m
//  RNHybridDemo
//
//  Created by duhx on 2018/10/16.
//  Copyright © 2018年 daojia. All rights reserved.
//

#import "CalendarManager.h"

@implementation CalendarManager

RCT_EXPORT_MODULE();

// 接收传过来的 NSString
RCT_EXPORT_METHOD(addEventOne:(NSString *)name){
    NSLog(@"接收传过来的NSString+NSString: %@", name);
}

RCT_EXPORT_METHOD(addEventTwo:(NSString *)name details:(NSDictionary *)details){
    
    RCTLogInfo(@"接收传过来的NSString+NSDictionary: %@ %@", name, details);
}

// 接收传过来的 NSString + date日期
RCT_EXPORT_METHOD(addEventThree:(NSString *)name date:(NSDate *)date)
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init] ;
    [formatter setDateFormat:@"yyyy-MM-dd"];
    RCTLogInfo(@"接收传过来的NSString+NSDictionary: %@ %@", name, [formatter stringFromDate:date]);
}

@end
