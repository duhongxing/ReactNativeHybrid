//
//  RNJumperManager.m
//  RNHybridDemo
//
//  Created by duhx on 2018/10/17.
//  Copyright © 2018年 58daojia. All rights reserved.
//

#import "RNJumperManager.h"
#import "BaseViewController.h"

@implementation RNJumperManager

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(jumpNativeVC:(NSString *)name){
    NSLog(@"%@",name);
    dispatch_async(dispatch_get_main_queue(), ^{
        if (!name.length) {
            return ;
        }
        Class vcClass = NSClassFromString(name);
        BaseViewController *vc = [[vcClass alloc]init];
        UIViewController *root = [[[[UIApplication sharedApplication] delegate] window] rootViewController];
        if ([root isKindOfClass:[UINavigationController class]]) {
            [(UINavigationController *)root pushViewController:vc animated:YES];
        } else if ([root isKindOfClass:[UIViewController class]]){
            [root.navigationController pushViewController:vc animated:YES];
        }
    });
}



@end
