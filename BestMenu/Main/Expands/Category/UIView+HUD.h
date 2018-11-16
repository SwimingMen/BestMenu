//
//  UIView+HUD.h
//  LongWebviewScreenshot
//
//  Created by Geforceyu on 2018/9/7.
//  Copyright © 2018年 geforecyu. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MBProgressHUD;

@interface UIView (HUD)

- (void)showSuccessToast:(NSString *)text;

- (void)showErrorToast:(NSString *)text;

- (MBProgressHUD *)showLoadingWithText:(NSString *)text;

- (void)dismissHUD;

@end
