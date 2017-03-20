//
//  UIWindow+STKit.h
//  IOS自定义常用控件
//
//  Created by ST on 17/3/1.
//  Copyright © 2017年 ST. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  Show touch on screen
 */
#define STShowTouchOnScreen [UIApplication.sharedApplication.keyWindow activateTouch]

/**
 *  Hide touch on screen
 */
#define STHideTouchOnScreen [UIApplication.sharedApplication.keyWindow deactivateTouch]

/**
 *  This category adds some useful methods to UIWindow
 *
 *  STShowTouchOnScreen: Show touch on screen
 *
 *  STHideTouchOnScreen: Hide touch on screen
 */
@interface UIWindow (STKit)

/**
 *  采取截屏
 */
- (UIImage * _Nonnull)takeScreenshot;

/**
 *  Take a screenshot of current window and choose if save it or not
 *
 *  @param save YES to save, NO to don't save
 *
 *  @return Returns the screenshot as an UIImage
 */
- (UIImage * _Nonnull)takeScreenshotAndSave:(BOOL)save;

/**
 *  Take a screenshot of current window, choose if save it or not after a delay
 *
 *  @param delay      The delay, in seconds
 *  @param save       YES to save, NO to don't save
 *  @param completion Completion handler with the UIImage
 */
- (void)takeScreenshotWithDelay:(CGFloat)delay save:(BOOL)save completion:(void (^ _Nullable)(UIImage * _Nonnull screenshot))completion;

/**
 *  Show touch on screen. (Use STShowTouchOnScreen macro)
 */
- (void)activateTouch;

/**
 *  Hide touch on screen. (Use STHideTouchOnScreen macro)
 */
- (void)deactivateTouch;

@end
