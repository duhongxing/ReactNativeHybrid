//
//  DHXMapManager.m
//  RNHybridDemo
//
//  Created by duhx on 2018/10/15.
//  Copyright © 2018年 daojia. All rights reserved.
//

#import "DHXMapManager.h"
#import <React/RCTLog.h>

@implementation DHXMapManager

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(hello:(NSString *)name)
{
    RCTLogInfo(@"调用原生模块:%@",name);
}


@end
