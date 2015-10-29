//
//  UIView+ST.m
//  STKitDemo
//
//  Created by rkxt_ios on 15/10/29.
//  Copyright © 2015年 shentian. All rights reserved.
//

#import "UIView+ST.h"

@implementation UIView (ST)
/* UIView初始化 */
+ (UIView *)initWithFrame:(CGRect)frame
          backgroundColor:(UIColor *)backgroundColor
{
    UIView *view = [[UIView alloc] initWithFrame:frame];
    [view setBackgroundColor:backgroundColor];
    return view;
}
@end
