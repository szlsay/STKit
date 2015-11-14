//
//  UITableView+STKit.h
//  IOS自定义常用控件
//
//  Created by shenzhaoliang on 15/2/26.
//  Copyright (c) 2015年 shundesoft. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 *  给UITableView类添加许多有用的方法
 */
@interface UITableView (STKit)

/**
 *  UITableView初始化
 */
+ (UITableView *)initWithFrame:(CGRect)frame                                    // 结构
                         style:(UITableViewStyle)style                          // 风格
            cellSeparatorStyle:(UITableViewCellSeparatorStyle)cellSeparatorStyle// 分割线风格
                separatorInset:(UIEdgeInsets)separatorInset                     // 边缘偏移
                    dataSource:(id <UITableViewDataSource>)dataSource           // 数据源
                      delegate:(id <UITableViewDelegate>)delegate;              // 委托

/**
 *  给定行列获取下一个索引路径
 */
- (NSIndexPath *)getNextIndexPath:(NSUInteger)row
                       forSection:(NSUInteger)section;

/**
 *  给定行列获取上一个索引路径
 */
- (NSIndexPath *)getPreviousIndexPath:(NSUInteger)row
                           forSection:(NSUInteger)section;
@end
