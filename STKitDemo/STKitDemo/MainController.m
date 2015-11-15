//
//  MainController.m
//  STKitDemo
//
//  Created by ST on 15/11/14.
//  Copyright © 2015年 shentian. All rights reserved.
//

#import "MainController.h"
#import "STAppController.h"
@interface MainController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong, nonnull)UITableView *tableView; //

@end

@implementation MainController

#pragma mark - lift cycle 生命周期

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //
    [self setupUI];
}

#pragma mark - Delegate 视图委托

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault
                                     reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = @"STApp";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        [self.navigationController pushViewController:[STAppController new]
                                             animated:YES];
    }
}

#pragma mark - event response 事件相应

#pragma mark - private methods 私有方法

- (void)setupUI
{
    [self.view addSubview:self.tableView];
}


#pragma mark - getters and setters 属性
- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:self.view.bounds
                                                 style:UITableViewStyleGrouped];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}

@end
