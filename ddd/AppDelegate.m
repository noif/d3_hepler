//
//  AppDelegate.m
//  ddd
//
//  Created by lantoo on 15/9/14.
//  Copyright (c) 2015年 雷霰霆. All rights reserved.
//

#import "AppDelegate.h"
#import "DDDTabBarController.h"
#import "UIImage+Common.h"
#import "UIColor+Common.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    [self setupTabViewController];
    
    [self customizeIPhoneTheme];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

#pragma mark - 设置tabVC
- (void)setupTabViewController {
    DDDTabBarController *root_vc = [[DDDTabBarController alloc] init];
    [self.window setRootViewController:root_vc];
}

#pragma mark - 自定义主题颜色
- (void)customizeIPhoneTheme {
    UINavigationBar *navigationBarAppearance = [UINavigationBar appearance];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    NSDictionary *textAttributes = @{
                                     NSFontAttributeName: [UIFont boldSystemFontOfSize:18],
                                     NSForegroundColorAttributeName: [UIColor whiteColor],
                                     };
    [navigationBarAppearance setTitleTextAttributes: textAttributes];
    //[[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:245.0/255.0 green:245.0/255.0 blue:245.0/255.0 alpha:1.0]];
    
    [navigationBarAppearance setTintColor:[UIColor whiteColor]];
    
    [navigationBarAppearance setBackgroundImage:[UIImage imageWithColor:[UIColor colorWithHexString:@"28303b"]] forBarMetrics:UIBarMetricsDefault];
    
    //[[UIBarButtonItem appearance] setTitlePositionAdjustment:UIOffsetMake(15, 0) forBarMetrics:UIBarMetricsDefault];
}



- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
