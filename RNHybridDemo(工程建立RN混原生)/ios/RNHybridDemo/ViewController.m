//
//  ViewController.m
//  RNHybridDemo
//
//  Created by 杜红星 on 2018/10/9.
//  Copyright © 2018年 daojia. All rights reserved.
//
//BOOL ret = ((int)((CGRectGetHeight([UIScreen mainScreen].bounds)/CGRectGetWidth([UIScreen mainScreen].bounds))*100) == 216)?YES:NO;
//CGFloat height = ret ? 83.0 : 49;
//if (iPhoneXSeries) {
//    NSLog(@"is iPhoneX Series %f",height);
//} else {
//    NSLog(@"isnoiPhoneX Series %f",height);
//}

#import "ViewController.h"
#import "RNTestViewController.h"

#define iPhoneXSeries (((int)((CGRectGetHeight([UIScreen mainScreen].bounds)/CGRectGetWidth([UIScreen mainScreen].bounds))*100) == 216) ? YES : NO)

#define kScreenWidth CGRectGetWidth([UIScreen mainScreen].bounds)
#define kScreenHeight CGRectGetHeight([UIScreen mainScreen].bounds)

@interface ViewController ()

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    RNTestViewController *testVC = [[RNTestViewController alloc]init];
    [self.navigationController pushViewController:testVC animated:YES];
}

@end
