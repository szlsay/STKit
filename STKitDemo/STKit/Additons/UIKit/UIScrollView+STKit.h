//
//  UIScrollView+STKit.h
//  IOS自定义常用控件
//
//  Created by shenzhaoliang on 15/2/26.
//  Copyright (c) 2015年 shundesoft. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  给UIScrollView类添加许多有用的方法
 */
@interface UIScrollView (STKit)

/**
 *  UIScrollView 初始化
 */

+ (UIScrollView *)initWithFrame:(CGRect)frame                       // 结构
                    contentSize:(CGSize)contentSize                 // 内容大小
                  clipsToBounds:(BOOL)clipsToBounds                 // 剪切边界，默认值是NO
                  pagingEnabled:(BOOL)pagingEnabled                 // 翻页，默认值是NO
           showScrollIndicators:(BOOL)showScrollIndicators          // 指标显示，默认YES
                       delegate:(id<UIScrollViewDelegate>)delegate; // 委托
@end
