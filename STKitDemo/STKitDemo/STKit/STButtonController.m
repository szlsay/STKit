//
//  STButtonController.m
//  STKitDemo
//
//  Created by rkxt_ios on 15/11/15.
//  Copyright © 2015年 shentian. All rights reserved.
//

#import "STButtonController.h"
#import "STButton.h"
@interface STButtonController ()
@property (nonatomic, strong, nonnull)STButton *button; //<##>
@end

@implementation STButtonController

#pragma mark - lift cycle 生命周期

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 1.创建视图
    [self setupUI];
}

#pragma mark - Delegate 视图委托

#pragma mark - event response 事件相应

#pragma mark - private methods 私有方法

- (void)setupUI
{
    [self.view addSubview:self.button];
}

#pragma mark - getters and setters 属性
- (STButton *)button
{
    if (!_button) {
        _button = [[STButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100) image:[UIImage imageNamed:@"playbar_pausebtn_nomal"]
    highlightedImage:[UIImage imageNamed:@"playbar_pausebtn_click"]
                                    fadeDuration:5];
    }
    return _button;
}

@end
