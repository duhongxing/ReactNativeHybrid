//
//  BaseRNViewController.m
//  RNHybridDemo
//
//  Created by duhx on 2018/10/16.
//  Copyright © 2018年 58daojia. All rights reserved.
//

#import "BaseRNViewController.h"
#import <React/RCTRootView.h>
#import <React/RCTBundleURLProvider.h>
static NSString *strUrl = @"http://localhost:8081/index-ios.bundle?platform=ios&dev=true";

@interface BaseRNViewController ()

@end

@implementation BaseRNViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"RNViewController";
    NSURL *jsCodeLocation;
    jsCodeLocation = [[RCTBundleURLProvider sharedSettings]jsBundleURLForBundleRoot:@"index-ios" fallbackResource:nil];
    RCTRootView *rootView = [[RCTRootView alloc]initWithBundleURL:jsCodeLocation moduleName:@"NativeAddRN" initialProperties:nil launchOptions:nil];
    self.view = rootView;
    
   
}



@end
