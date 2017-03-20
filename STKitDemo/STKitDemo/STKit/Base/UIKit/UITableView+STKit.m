//
//  UITableView+STKit.m
//  IOS自定义常用控件
//
//  Created by ST on 17/3/1.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "UITableView+STKit.h"

@implementation UITableView (STKit)

/* UITableView初始化 */
+ (UITableView *)initWithFrame:(CGRect)frame                                    // 结构
                         style:(UITableViewStyle)style                          // 风格
            cellSeparatorStyle:(UITableViewCellSeparatorStyle)cellSeparatorStyle// 分割线风格
                separatorInset:(UIEdgeInsets)separatorInset                     // 边缘偏移
                    dataSource:(id <UITableViewDataSource>)dataSource           // 数据源
                      delegate:(id <UITableViewDelegate>)delegate               // 委托
{
    UITableView *tableView = [[UITableView alloc] initWithFrame:frame style:style];
    [tableView setSeparatorStyle:cellSeparatorStyle];
    [tableView setSeparatorInset:separatorInset];
    [tableView setDelegate:delegate];
    [tableView setDataSource:dataSource];
    
    return tableView;
}

/* 获取对应节数的索引集合 */
- (NSArray *)getIndexPathsForSection:(NSUInteger)section;
{
    NSMutableArray *indexPaths = [[NSMutableArray alloc] init];
    NSInteger rows = [self numberOfRowsInSection:section];
    for (int i = 0; i < rows; i++) {
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:i
                                                    inSection:section];
        [indexPaths addObject:indexPath];
    }
    
    return (NSArray *)indexPaths;
}

/* 给定行列获取下一个索引路径 */
- (NSIndexPath *)getNextIndexPath:(NSUInteger)row
                       forSection:(NSUInteger)section
{
    NSArray *indexPaths = [self getIndexPathsForSection:section];
    return [indexPaths objectAtIndex:row+1];
}

/* 给定行列获取上一个索引路径 */
- (NSIndexPath *)getPreviousIndexPath:(NSUInteger)row
                           forSection:(NSUInteger)section
{
    NSArray *indexPaths = [self getIndexPathsForSection:section];
    return [indexPaths objectAtIndex:row-1];
}

@end
