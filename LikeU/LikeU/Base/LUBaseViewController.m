//
//  LUBaseViewController.m
//  LikeU
//
//  Created by Ericmao on 2017/6/11.
//  Copyright © 2017年 zhengya. All rights reserved.
//

#import "LUBaseViewController.h"

@interface LUBaseViewController ()

@end

@implementation LUBaseViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = NO;
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end
