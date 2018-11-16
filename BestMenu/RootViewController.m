//
//  RootViewController.m
//  BestMenu
//
//  Created by Chonghua Yu on 2018/11/16.
//  Copyright © 2018 SwimingMen. All rights reserved.
//

#import "RootViewController.h"
#import "HomeViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (instancetype)initWithRootViewController:(UIViewController *)rootViewController
{
    HomeViewController *home = [[HomeViewController alloc] init];
    self = [super initWithRootViewController:home];
    if (self) {
        
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
}

@end
