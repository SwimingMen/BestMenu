//
//  BMCoverViewController.m
//  BestMenu
//
//  Created by Chonghua Yu on 2018/11/19.
//  Copyright © 2018 SwimingMen. All rights reserved.
//

#import "BMCoverViewController.h"
#import "FBShimmeringView.h"

@interface BMCoverViewController ()

@property (strong, nonatomic) UIImageView *logoImageView;
@property (strong, nonatomic) UILabel *nameLabel;
@property (strong, nonatomic) UIButton *startButton;
@property (strong, nonatomic) FBShimmeringView *startView;
@end

@implementation BMCoverViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor blackColor];
    [self.view addSubview:self.logoImageView];
    [self.view addSubview:self.nameLabel];
    [self.view addSubview:self.startView];
    [self.logoImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@250);
        make.height.equalTo(@250);
        make.center.equalTo(self.view).centerOffset(CGPointMake(0, -200));
    }];
    [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.view).insets(UIEdgeInsetsMake(0, 20, 0, 20));
        make.center.equalTo(self.view);
        make.height.equalTo(@50);
    }];
    [self.startView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@150);
        make.height.equalTo(@70);
        make.right.equalTo(self.view);
        make.bottom.equalTo(self.view).offset(-100);
    }];
}
-  (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.logoImageView.center = CGPointMake(self.view.width/2.0, self.view.height/2.0);
    [UIView animateWithDuration:1.5 animations:^{
        self.logoImageView.center = CGPointMake(self.view.width/2.0, self.view.height/2.0-200);
    } completion:^(BOOL finished) {
    }];
    [UIView animateWithDuration:1 delay:0.5 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.nameLabel.alpha = 1;
    } completion:nil];
}

#pragma mark -Getter
- (UIImageView *)logoImageView
{
    if (!_logoImageView) {
        _logoImageView = [[UIImageView alloc] init];
        _logoImageView.image = [UIImage imageNamed:@"applaunchLogo"];
        _logoImageView.layer.cornerRadius = 125;
        _logoImageView.clipsToBounds = YES;
    }
    return _logoImageView;
}
- (UILabel *)nameLabel
{
    if (!_nameLabel) {
        _nameLabel = [[UILabel alloc] init];
        _nameLabel.font = [UIFont systemFontOfSize:49];
        _nameLabel.textAlignment = NSTextAlignmentCenter;
        _nameLabel.text = @"我的门店";
        _nameLabel.alpha = 0;
    }
    return _nameLabel;
}
- (UIButton *)startButton
{
    if (!_startButton) {
        _startButton = [[UIButton alloc] init];
        [_startButton setTitle:Local(@"菜单") forState:UIControlStateNormal];
        [_startButton setTitleColor:[UIColor skyBlueColor] forState:UIControlStateNormal];
    }
    return _startButton;
}
- (FBShimmeringView *)startView
{
    if (!_startView) {
        _startView = [[FBShimmeringView alloc] init];
        _startView.backgroundColor = [UIColor blackColor];
        UILabel *startLabel = [[UILabel alloc] initWithFrame:CGRectMake(0,0,150,70)];
        startLabel.text = Local(@"菜单");
        startLabel.font = [UIFont systemFontOfSize:39];
        startLabel.textColor = [UIColor whiteColor];
        startLabel.backgroundColor = [UIColor clearColor];
        
        _startView.contentView = startLabel;
        _startView.shimmeringDirection = FBShimmerDirectionLeft;
        _startView.shimmering = YES;
//        _startView.shimmeringAnimationOpacity = 0.3;
        _startView.shimmeringOpacity = 0.3;
    }
    return _startView;
}
@end
