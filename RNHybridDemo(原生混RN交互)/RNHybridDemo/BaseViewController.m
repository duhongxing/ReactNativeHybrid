//
//  BaseViewController.m
//  RNHybridDemo
//
//  Created by duhx on 2018/10/17.
//  Copyright © 2018年 58daojia. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = [NSString stringWithFormat:@"%@",NSStringFromClass([self class])];
    [self setupNavigateBar];
}

///初始化导航
- (void)setupNavigateBar {
    self.navigationController.navigationBar.barTintColor = [UIColor purpleColor];
    self.navigationController.navigationBar.barStyle     = UIBarStyleBlack;
    self.navigationController.navigationBar.tintColor    = [UIColor whiteColor];
}

- (void)setNavigationBarColorWithColor:(UIColor *)color {
    if (color) {
        self.navigationController.navigationBar.barTintColor = color;
    }
}

@end
