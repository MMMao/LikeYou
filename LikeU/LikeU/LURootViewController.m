//
//  LURootViewController.m
//  LikeU
//
//  Created by Ericmao on 2017/6/11.
//  Copyright © 2017年 zhengya. All rights reserved.
//

#import "LURootViewController.h"
#import "LURecomendViewController.h"
#import "LUFindViewController.h"
#import "LUMindViewController.h"
#import "LUUserCenterViewController.h"
#import "LUBaseTools.h"


@interface LURootViewController ()

@property (nonatomic, strong) LURecomendViewController *recommendViewController;
@property (nonatomic, strong) LUFindViewController  *findViewController;
@property (nonatomic, strong) LUMindViewController *mindViewController;
@property (nonatomic, strong) LUUserCenterViewController *userCentrViewController;

@end

@implementation LURootViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createSubViewController];
}

- (void)createSubViewController
{
    self.recommendViewController = [[LURecomendViewController alloc] init];
    self.recommendViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"推荐"
                                                                            image: ImageWithName(@"tab_recommend")
                                                                              tag:0];
    UINavigationController *recNavi = [[UINavigationController alloc] initWithRootViewController:self.recommendViewController];
    
    
    self.findViewController = [[LUFindViewController alloc] init];
    self.findViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"发现"
                                                                       image:ImageWithName(@"tab_find")
                                                                         tag:1];
    UINavigationController *findNavi = [[UINavigationController alloc] initWithRootViewController:self.findViewController];
    
    self.mindViewController = [[LUMindViewController alloc] init];
    self.mindViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"心理"
                                                                       image:ImageWithName(@"tab_mind")
                                                                         tag:2];
    UINavigationController *mindNavi = [[UINavigationController alloc] initWithRootViewController:self.mindViewController];
    
    
    self.userCentrViewController = [[LUUserCenterViewController alloc] init];
    self.userCentrViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我"
                                                                            image:ImageWithName(@"tab_userCenter")
                                                                              tag:2];
    UINavigationController *usercenterNavi = [[UINavigationController alloc] initWithRootViewController:self.userCentrViewController];
    
    
    self.viewControllers = @[recNavi, findNavi, mindNavi, usercenterNavi];
}

@end
