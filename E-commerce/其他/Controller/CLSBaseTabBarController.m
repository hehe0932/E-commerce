//
//  CLSBaseTabBarViewController.m
//  E-commerce
//
//  Created by chenlishuang on 2017/10/25.
//  Copyright © 2017年 chenlishuang. All rights reserved.
//

#import "CLSBaseTabBarController.h"
#import "CLSBaseNavgationController.h"
#import "CLSTimeViewController.h"
#import "CLSClassViewController.h"
#import "CLSShoppingViewController.h"
#import "CLSMineViewController.h"
@interface CLSBaseTabBarController ()

@end

@implementation CLSBaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 限时特卖
    CLSTimeViewController *tiemVC = [[CLSTimeViewController alloc]init];
    [self setupTabBarController:tiemVC image:@"菜单栏限时特卖按钮未选中状态" selectImage:@"菜单栏限时特卖按钮选中状态" title:@"限时购"];
    
    //分类
    CLSClassViewController *classVC = [[CLSClassViewController alloc]init];
    [self setupTabBarController:classVC image:@"菜单栏分类按钮未选中状态" selectImage:@"菜单栏分类按钮选中状态" title:@"分类"];
    
    //购物车
    CLSShoppingViewController *shoppingVC = [[CLSShoppingViewController alloc]init];
    [self setupTabBarController:shoppingVC image:@"菜单栏购物车按钮未选中状态" selectImage:@"菜单栏购物车按钮选中状态" title:@"购物车"];
    
    //我的
    CLSMineViewController *mineVC = [[CLSMineViewController alloc]init];
    [self setupTabBarController:mineVC image:@"菜单栏我的按钮未选中状态" selectImage:@"菜单栏我的按钮选中状态" title:@"我的"];
}

- (void)setupTabBarController:(UIViewController *)viewController image:(NSString *)image selectImage:(NSString *)selectImage title:(NSString *)title{
    
    viewController.tabBarItem.image = [UIImage imageNamed:image];
    viewController.tabBarItem.selectedImage = [UIImage imageNamed:selectImage];
    viewController.title = title;
    [viewController.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor grayColor]} forState:UIControlStateNormal];
    [viewController.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:CLSRGBColor(57, 167, 241)} forState:UIControlStateSelected];
    
    CLSBaseNavgationController *nav = [[CLSBaseNavgationController alloc]initWithRootViewController:viewController];
    [self addChildViewController:nav];
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
