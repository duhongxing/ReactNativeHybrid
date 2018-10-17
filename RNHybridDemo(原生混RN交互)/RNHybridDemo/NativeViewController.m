//
//  NativeViewController.m
//  RNHybridDemo
//
//  Created by duhx on 2018/10/17.
//  Copyright © 2018年 58daojia. All rights reserved.
//

#import "NativeViewController.h"
#import <React/RCTRootView.h>
#import <React/RCTBundleURLProvider.h>

@interface NativeViewController ()

@end

@implementation NativeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"原生RN混合页面";
    // Do any additional setup after loading the view.
    [self setNavigationBarColorWithColor:[UIColor grayColor]];
    self.view.backgroundColor = [UIColor brownColor];
    NSURL *jsCodeLocation;
    jsCodeLocation = [[RCTBundleURLProvider sharedSettings]jsBundleURLForBundleRoot:@"App" fallbackResource:nil];
    RCTRootView *rootView = [[RCTRootView alloc]initWithBundleURL:jsCodeLocation moduleName:@"RNViewAddNative" initialProperties:nil launchOptions:nil];
    [self.view addSubview:rootView];
    
    UILabel *nativeView = [[UILabel alloc]initWithFrame:CGRectMake(0, 350, 375, 100)];
    nativeView.text = @"我是原生label视图";
    nativeView.textColor = [UIColor whiteColor];
    nativeView.textAlignment = NSTextAlignmentCenter;
    nativeView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:nativeView];
}



@end
