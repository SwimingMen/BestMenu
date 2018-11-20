//
//  RootViewController.m
//  BestMenu
//
//  Created by Chonghua Yu on 2018/11/16.
//  Copyright © 2018 SwimingMen. All rights reserved.
//

#import "RootViewController.h"
#import "HomeViewController.h"
#import "BMCoverViewController.h"

@interface RootViewController ()

@property (nonatomic, strong) UIImageView *topBgView;
@property (nonatomic, strong) UIImageView *shopLogoView;

@end

@implementation RootViewController

- (instancetype)init
{
    BMCoverViewController *cover = [[BMCoverViewController alloc] init];
    self = [super initWithRootViewController:cover];
    if (self) {
        
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationBar.hidden = YES;
}

@end
