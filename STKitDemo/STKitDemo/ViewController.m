//
//  ViewController.m
//  STKitDemo
//
//  Created by ST on 17/3/1.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "ViewController.h"
#import "STButton.h"

#import "UIWindow+STKit.h"

@interface ViewController ()
/** 1. */
@property(nonatomic, strong)UIImageView *imageView;
@end

@implementation ViewController

#pragma mark - --- 1.lift cycle 生命周期 ---

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    STButton *button = [[STButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100) image:[UIImage imageNamed:@"filter_scenery_180"] highlightedImage:[UIImage imageNamed:@"filter_general_557"] fadeDuration:2.0];
    
    
    
    self.imageView = [[UIImageView alloc]initWithFrame:self.view.bounds];
    self.imageView.image = [UIImage imageNamed:@"filter_meirong_baixi"];
    [self.view addSubview:self.imageView];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(takeScreenshot) forControlEvents:UIControlEventTouchUpInside];
}

#pragma mark - --- 2.delegate 视图委托 ---

#pragma mark - --- 3.event response 事件相应 ---
- (void)takeScreenshot
{
//     NSLog(@"%s %@", __FUNCTION__, [UIApplication sharedApplication].windows);
//     NSLog(@"%s %@", __FUNCTION__, [[UIApplication sharedApplication].keyWindow takeScreenshotAndSave:NO]);
//    UIImage *image = [[UIApplication sharedApplication].windows.firstObject takeScreenshotAndSave:YES];
//    self.imageView.image = image;
    
    UIWindow *window = [[UIWindow alloc]init];
    window.frame = self.view.frame;
    window.backgroundColor = self.view.backgroundColor;
    
    UIBlurEffect *beffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleExtraLight];
    
    UIVisualEffectView *view = [[UIVisualEffectView alloc]initWithEffect:beffect];
    view.frame = self.view.bounds;
    
    [self.view addSubview:view];
    
        
}
#pragma mark - --- 4.private methods 私有方法 ---

#pragma mark - --- 5.setters 属性 ---

#pragma mark - --- 6.getters 属性 —--

@end
