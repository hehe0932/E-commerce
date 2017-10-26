//
//  CLSBaseNavgationController.m
//  E-commerce
//
//  Created by chenlishuang on 2017/10/25.
//  Copyright © 2017年 chenlishuang. All rights reserved.
//

#import "CLSBaseNavgationController.h"

@interface CLSBaseNavgationController ()

@end

@implementation CLSBaseNavgationController

- (void)viewDidLoad {
    [super viewDidLoad];
    UINavigationBar *navBar = [UINavigationBar appearance];
    [navBar setBackgroundImage:[UIImage imageNamed:@"nav_backImage"] forBarMetrics:(UIBarMetricsDefault)];
    
    [navBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor],NSFontAttributeName:[UIFont boldSystemFontOfSize:20.0]}];
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
