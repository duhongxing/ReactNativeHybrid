//
//  CalendarManager.m
//  RNHybridDemo
//
//  Created by duhx on 2018/10/16.
//  Copyright © 2018年 58daojia. All rights reserved.
//

#import "CalendarManager.h"

@implementation CalendarManager

RCT_EXPORT_MODULE();

// 接收传过来的 NSString
RCT_EXPORT_METHOD(addEventOne:(NSString *)name){
    NSLog(@"接收传过来的NSString+NSString: %@", name);
    [self showAlertWithText:name];
}

// 接收传过来的 NSString + NSDictionary
RCT_EXPORT_METHOD(addEventTwo:(NSString *)name details:(NSDictionary *)details){
    RCTLogInfo(@"接收传过来的NSString+NSDictionary: %@ %@", name, details);
    [self showAlertWithText:[self jsonStringForDictionary:details]];
}

RCT_EXPORT_METHOD(addEventThree:(NSString *)name date:(NSDate *)date){
    NSDateFormatter *dateformatter = [[NSDateFormatter alloc]init];
    dateformatter.dateFormat = @"yyyy-MM-dd";
    RCTLogInfo(@"接收传过来的NSString+NSDictionary: %@ %@", name, [dateformatter stringFromDate:date]);
    [self showAlertWithText:[dateformatter stringFromDate:date]];
}

RCT_EXPORT_METHOD(testCallbackEventOne:(NSString *)name callBack:(RCTResponseSenderBlock)callback){
    NSLog(@"%@",name);
    NSArray *events = @[@"Apple",@"banana",@"orange",@"4"];
    callback(@[[NSNull null],events]);
}

RCT_REMAP_METHOD(testCallbackEventTwo, resolver:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject){
    NSArray *events =@[@"one ",@"two ",@"three"];//准备回调回去的数据
    
    if (events) {
        resolve(events);
    } else {
        NSError *error=[NSError errorWithDomain:@"我是Promise回调错误信息..." code:101 userInfo:nil];
        reject(@"no_events", @"There were no events", error);
    }
}

- (NSDictionary *)constantsToExport
{
    return @{ @"ValueOne": @"我是从原生定义的~" };
}

- (void)showAlertWithText:(NSString *)text {
    dispatch_async(dispatch_get_main_queue(), ^{
        UIAlertView *alert =[[UIAlertView alloc]initWithTitle:nil message:text delegate:nil cancelButtonTitle:@"确定" otherButtonTitles: nil];
        [alert show];
    });
}

- (NSString *)jsonStringForDictionary:(NSDictionary *)dic {
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:nil];
    NSString *jsonString = [[NSString alloc]initWithData:jsonData encoding:NSUTF8StringEncoding];
    return jsonString;
}

@end
