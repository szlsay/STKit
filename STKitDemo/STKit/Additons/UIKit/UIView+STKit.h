//
//  UIView+STKit.h
//  STKitDemo
//
//  Created by rkxt_ios on 15/10/30.
//  Copyright © 2015年 shentian. All rights reserved.
//

#import <UIKit/UIKit.h>


/**
 *  Direction of flip animation
 */
typedef NS_ENUM(NSInteger, UIViewAnimationFlipDirection)
{
    /**
     *  Flip animation from top
     */
    UIViewAnimationFlipDirectionFromTop = 0,
    /**
     *  Flip animation from left
     */
    UIViewAnimationFlipDirectionFromLeft,
    /**
     *  Flip animation from right
     */
    UIViewAnimationFlipDirectionFromRight,
    /**
     *  Flip animation from bottom
     */
    UIViewAnimationFlipDirectionFromBottom
};

/**
 *  Direction of the translation
 */
typedef NS_ENUM(NSInteger, UIViewAnimationTranslationDirection)
{
    /**
     *  Translation from left to right
     */
    UIViewAnimationTranslationDirectionFromLeftToRight = 0,
    /**
     *  Translation from right to left
     */
    UIViewAnimationTranslationDirectionFromRightToLeft
};

/**
 *  Direction of the linear gradient
 */
typedef NS_ENUM(NSInteger, UIViewLinearGradientDirection)
{
    /**
     *  Linear gradient vertical
     */
    UIViewLinearGradientDirectionVertical = 0,
    /**
     *  Linear gradient horizontal
     */
    UIViewLinearGradientDirectionHorizontal,
    /**
     *  Linear gradient from left to right and top to down
     */
    UIViewLinearGradientDirectionDiagonalFromLeftToRightAndTopToDown,
    /**
     *  Linear gradient from left to right and down to top
     */
    UIViewLinearGradientDirectionDiagonalFromLeftToRightAndDownToTop,
    /**
     *  Linear gradient from right to left and top to down
     */
    UIViewLinearGradientDirectionDiagonalFromRightToLeftAndTopToDown,
    /**
     *  Linear gradient from right to left and down to top
     */
    UIViewLinearGradientDirectionDiagonalFromRightToLeftAndDownToTop
};



@interface UIView (STKit)

/**
 *  1.给UIView添加点击事件
 */
- (void)addTarget:(id)target
           action:(SEL)action;

/**
 *  2.UIView的类初始化
 */
+ (UIView *)viewWithFrame:(CGRect)frame
          backgroundColor:(UIColor *)backgroundColor;

/**
 *  3.创建边框
 */
- (void)setBordersWithColor:(UIColor *)color
            andCornerRadius:(CGFloat)radius
                   andWidth:(CGFloat)width;

/**
 *  4.删除边框
 */
- (void)removeBorders;

/**
 *  5.创建阴影
 */
- (void)setRectShadowWithOffset:(CGSize)offset
                        opacity:(CGFloat)opacity
                         radius:(CGFloat)radius;

/**
 *  6.删除阴影
 */
- (void)removeShadow;

/**
 *  7.创建圆角半径阴影
 */
- (void)setCornerRadiusShadowWithCornerRadius:(CGFloat)cornerRadius
                                       offset:(CGSize)offset
                                      opacity:(CGFloat)opacity
                                       radius:(CGFloat)radius;



/**
 *  8.设置圆角半径
 */
- (void)setCornerRadius:(CGFloat)radius;

/**
 *  9.摇摆动画
 */
- (void)shakeView;

/**
 *  10.脉冲动画
 */
- (void)pulseViewWithTime:(CGFloat)seconds;

@end
