//
//  STAppController.m
//  STKitDemo
//
//  Created by ST on 15/11/15.
//  Copyright © 2015年 shentian. All rights reserved.
//

#import "STAppController.h"
#import "STApp.h"
@interface STAppController ()

@property (nonatomic, strong, nonnull)UILabel *labelContent; //

@end

@implementation STAppController

#pragma mark - lift cycle 生命周期

- (void)viewDidLoad
{
    [super viewDidLoad];
    
   // 1.创建视图
    [self setupUI];
    
    // 2.设置数据
    [self setupData];
    
}

#pragma mark - Delegate 视图委托

#pragma mark - event response 事件相应

#pragma mark - private methods 私有方法

/**
 *  1.创建视图
 */
- (void)setupUI
{
    // 1.设置标题和背景色
    self.title = @"STApp";
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 2.添加按钮
    [self.view addSubview:self.labelContent];
}

/**
 *  2.创建数据
 */
- (void)setupData
{
    self.labelContent.text = [NSString stringWithFormat:@"APPName:%@\nAPPVersion:%@\nAPPVersionShort:%@", APP_Name, APP_Version, APP_VersionShort];
}
#pragma mark - getters and setters 属性

/**
 *  1.视图懒加载
 */
- (UILabel *)labelContent
{
    if (!_labelContent) {
        _labelContent = [[UILabel alloc]initWithFrame:self.view.bounds];
        _labelContent.numberOfLines = 0;
        
    }
    return _labelContent;
}


@end
