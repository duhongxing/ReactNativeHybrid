//
//  RNTestViewController.m
//  RNHybridDemo
//
//  Created by 杜红星 on 2018/10/9.
//  Copyright © 2018年 daojia. All rights reserved.
//

#import "RNTestViewController.h"
#import <React/RCTRootView.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTEventEmitter.h>

@interface RNTestViewController ()

@end

@implementation RNTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"iOSRNHybridTest";
    
    NSURL * jsCodeLocation;

//    NSString * strUrl = @"http://localhost:8081/index.bundle?platform=ios&dev=true";
//    jsCodeLocation = [NSURL URLWithString:strUrl];
    
    jsCodeLocation = [[RCTBundleURLProvider sharedSettings]jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
    
    NSDictionary *params = @{@"componentName":@"MeApp1", @"args":@{@"params":@"这是原生传递的参数"}};
    
    RCTRootView * rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                         moduleName:@"iOSRN"
                                                  initialProperties:params
                                                      launchOptions:nil];
    self.view = rootView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
