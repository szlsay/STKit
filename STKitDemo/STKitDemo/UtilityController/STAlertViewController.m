//
//  STAlertViewController.m
//  STKitDemo
//
//  Created by ST on 17/3/17.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "STAlertViewController.h"
#import "STAlertView.h"
@interface STAlertViewController ()

@end

@implementation STAlertViewController

#pragma mark - --- 1.lift cycle 生命周期 ---
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}
#pragma mark - --- 2.delegate 视图委托 ---

#pragma mark - --- 3.event response 事件相应 ---
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [STAlertView showWithTitle:@"提示" message:@"哈哈哈" cancelButtonTitle:@"取消" otherButtonTitle:@"" clickButtonBlock:^(STAlertView * _Nonnull alertView, NSUInteger buttonIndex) {
            
        }];
//    });

}
#pragma mark - --- 4.private methods 私有方法 ---

#pragma mark - --- 5.setters 属性 ---

#pragma mark - --- 6.getters 属性 —--

@end
