//
//  DDDTabBarController.m
//  ddd
//
//  Created by lantoo on 15/9/14.
//  Copyright (c) 2015年 雷霰霆. All rights reserved.
//

#import "DDDTabBarController.h"
#import "DDDDpsVC.h"
#import "DDDSkillVC.h"
#import "DDDWeaponsVC.h"
#import <RDVTabBarItem.h>

@interface DDDTabBarController ()

@end

@implementation DDDTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.tabBar.translucent = YES;
//    self.tabBar.backgroundView.backgroundColor = k_color_home_inside;
    
    [self setupViewControllers];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Private_M
- (void)setupViewControllers {
    DDDDpsVC *dpsVC = [[DDDDpsVC alloc] init];
    UINavigationController *dpsNav = [[UINavigationController alloc] initWithRootViewController:dpsVC];
    
    DDDSkillVC *skillVC = [[DDDSkillVC alloc] init];
    UINavigationController *skillNav = [[UINavigationController alloc] initWithRootViewController:skillVC];
    
    DDDWeaponsVC *weaponVC = [[DDDWeaponsVC alloc] init];
    UINavigationController *weaponNav = [[UINavigationController alloc] initWithRootViewController:weaponVC];
    
    
    [self setViewControllers:@[weaponNav,skillNav,dpsNav]];
    [self customizeTabBarForController];
    self.delegate = self;
}

- (void)customizeTabBarForController {
    UIImage *backgroundImage = [UIImage imageNamed:@"tabbar_background"];
    NSArray *tabBarItemImages = @[@"tab1", @"tab2", @"tab3"];
    NSArray *tabBarItemTitles = @[@"数据库", @"技能模拟器", @"收益计算器"];
    
    NSInteger index = 0;
    for (RDVTabBarItem *item in [[self tabBar] items]) {
        [item setBackgroundSelectedImage:backgroundImage withUnselectedImage:backgroundImage];
        UIImage *selectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@_select",
                                                      [tabBarItemImages objectAtIndex:index]]];
        UIImage *unselectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@_normal",
                                                        [tabBarItemImages objectAtIndex:index]]];
        [item setFinishedSelectedImage:selectedimage withFinishedUnselectedImage:unselectedimage];
        [item setTitle:[tabBarItemTitles objectAtIndex:index]];
        item.selectedTitleAttributes = @{NSForegroundColorAttributeName:[UIColor blackColor]};
        item.unselectedTitleAttributes = @{NSForegroundColorAttributeName:[UIColor grayColor]};
        index++;
    }
}


@end
