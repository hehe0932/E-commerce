//
//  CLSShoppingViewController.m
//  E-commerce
//
//  Created by chenlishuang on 2017/10/25.
//  Copyright © 2017年 chenlishuang. All rights reserved.
//

#import "CLSShoppingViewController.h"

@interface CLSShoppingViewController ()

@end

@implementation CLSShoppingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = CLSRGBColor(arc4random_uniform(255), arc4random_uniform(255), arc4random_uniform(255));
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
