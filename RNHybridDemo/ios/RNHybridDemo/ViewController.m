//
//  ViewController.m
//  RNHybridDemo
//
//  Created by 杜红星 on 2018/10/9.
//  Copyright © 2018年 daojia. All rights reserved.
//

#import "ViewController.h"
#import "RNTestViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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
