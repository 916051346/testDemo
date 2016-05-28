//
//  AppDelegate.m
//  01-fangWB
//
//  Created by 李静莹 on 16/5/28.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //创建窗口
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    //
    UITabBarController *tabBarVC = [[UITabBarController alloc]init];
    
    //添加窗口的根控制器
    self.window.rootViewController = tabBarVC;
    
    //首页
    UITableViewController *table = [[UITableViewController alloc]init];
    table.view.backgroundColor = [UIColor blueColor];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:table];
    
    [tabBarVC addChildViewController:nav];
    
    
    //选表
    UIViewController *vc = [[UIViewController alloc]init];
    vc.view.backgroundColor = [UIColor grayColor];
    UINavigationController *nav2 = [[UINavigationController alloc]initWithRootViewController:vc];
    
    [tabBarVC addChildViewController:nav2];
    
    //购物车
    UIViewController *vc2 = [[UIViewController alloc]init];
    vc2.view.backgroundColor = [UIColor redColor];
    UINavigationController *nav3 = [[UINavigationController alloc]initWithRootViewController:vc2];
    
    [tabBarVC addChildViewController:nav3];
    
    //我
    UIViewController *vc3 = [[UIViewController alloc]init];
    vc3.view.backgroundColor = [UIColor orangeColor];
    UINavigationController *nav4 = [[UINavigationController alloc]initWithRootViewController:vc3];
    
    [tabBarVC addChildViewController:nav4];
    
    //显示窗口
    [self.window makeKeyAndVisible];
    return YES;
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
