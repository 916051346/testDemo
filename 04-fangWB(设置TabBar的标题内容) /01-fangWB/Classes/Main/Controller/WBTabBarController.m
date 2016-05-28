//
//  WBTabBarController.m
//  01-fangWB
//
//  Created by 李静莹 on 16/5/28.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

#import "WBTabBarController.h"
#import "HomeTableViewController.h"
#import "WatchViewController.h"
#import "MeViewController.h"
#import "ShopViewController.h"

@interface WBTabBarController ()

@end

@implementation WBTabBarController
#pragma mark-------------
#pragma 设置所有子控件
-(void)setAllChildVC
{
    //首页
    HomeTableViewController *table = [[HomeTableViewController alloc]init];
    
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:table];
    
    [self addChildViewController:nav];
    
    
    //选表
    WatchViewController *vc = [[WatchViewController alloc]init];
    
    UINavigationController *nav2 = [[UINavigationController alloc]initWithRootViewController:vc];
    
    [self addChildViewController:nav2];
    
    //购物车
    ShopViewController *vc2 = [[ShopViewController alloc]init];
    
    UINavigationController *nav3 = [[UINavigationController alloc]initWithRootViewController:vc2];
    
    [self addChildViewController:nav3];
    
    //我
    MeViewController *vc3 = [[MeViewController alloc]init];
    
    [self addChildViewController:vc3];
    
    

}

#pragma mark-------------
#pragma 设置TabBar的标题内容
-(void)setAllTitle
{
    UINavigationController *nav1 =  self.childViewControllers[0]
    ;
    nav1.tabBarItem.title = @"首页";
    
    UINavigationController *nav2 =  self.childViewControllers[1]
    ;
    nav2.tabBarItem.title = @"选表";
    
    UINavigationController *nav3 =  self.childViewControllers[2]
    ;
    nav3.tabBarItem.title = @"购物车";
    
    UIViewController *vc =  self.childViewControllers[3]
    ;
    vc.tabBarItem.title = @"我的";
}
- (void)viewDidLoad {
    [super viewDidLoad];
    //设置子控件
    [self setAllChildVC];
    //设置TabBar的标题内容
    [self setAllTitle];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
