//
//  ViewController.m
//  STKitDemo
//
//  Created by rkxt_ios on 15/10/29.
//  Copyright © 2015年 shentian. All rights reserved.
//

#import "ViewController.h"
#import "UIView+ST.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *customView = [UIView initWithFrame:CGRectMake(100, 100, 100, 100)
                               backgroundColor:[UIColor redColor]];
    [self.view addSubview:customView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
