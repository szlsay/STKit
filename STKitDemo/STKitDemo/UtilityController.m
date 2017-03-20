//
//  UtilityController.m
//  STKitDemo
//
//  Created by ST on 17/3/17.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "UtilityController.h"
static NSString *cellId = @"UITableViewCell";
@interface UtilityController ()<UITableViewDelegate, UITableViewDataSource>
/** <#content#> */
@property(nonatomic, strong)UITableView *tableView;
/** <#content#> */
@property(nonatomic, strong, readonly)NSArray *arrayName;
@end

@implementation UtilityController

#pragma mark - --- 1.lift cycle 生命周期 ---
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
}
#pragma mark - --- 2.delegate 视图委托 ---

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.arrayName.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellId];
    }
    cell.textLabel.text = self.arrayName[indexPath.row];
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIViewController *vc = [[NSClassFromString(self.arrayName[indexPath.row]) alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
#pragma mark - --- 3.event response 事件相应 ---

#pragma mark - --- 4.private methods 私有方法 ---

#pragma mark - --- 5.setters 属性 ---

#pragma mark - --- 6.getters 属性 —--

- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.backgroundColor = [UIColor whiteColor];
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellId];
        _tableView.dataSource = self;
        _tableView.delegate = self;
    }
    return _tableView;
}

- (NSArray *)arrayName
{
    return @[@"STAlertViewController"];
}

@end
