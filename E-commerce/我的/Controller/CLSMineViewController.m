//
//  CLSMineViewController.m
//  E-commerce
//
//  Created by chenlishuang on 2017/10/25.
//  Copyright © 2017年 chenlishuang. All rights reserved.
//

#import "CLSMineViewController.h"

@interface CLSMineViewController ()<UITableViewDelegate,UITableViewDataSource>
/** 顶部登录与注册视图*/
@property (nonatomic,strong)UIView *headView;
/** 顶部视图背景*/
@property (nonatomic,strong)UIImageView *headBackView;
/** 登录按钮*/
@property (nonatomic,strong)UIButton *loginButton;
/** 注册按钮*/
@property (nonatomic,strong)UIButton *landingButton;
/** 功能列表*/
@property (nonatomic,strong)UITableView *tableView;

/** cell标题*/
@property (nonatomic,strong)NSArray *titleArray;
/** cell图片*/
@property (nonatomic,strong)NSArray *imageArray;
@end

@implementation CLSMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = CLSRGBColor(242, 242, 242);
    [self.view addSubview:self.headView];
    [self.headView addSubview:self.headBackView];
    [self.headView addSubview:self.loginButton];
    [self.headView addSubview:self.landingButton];
    [self.view addSubview:self.tableView];
    
    __weak typeof(self) wSelf = self;
    [self.headView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.equalTo(wSelf.view);
        make.height.mas_equalTo(150);
    }];
    
    [self.headBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(wSelf.headView);
    }];
    
    [self.loginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(wSelf.headBackView.mas_centerX).offset(60);
        make.centerY.equalTo(wSelf.headBackView.mas_centerY);
        make.size.mas_equalTo(CGSizeMake(45, 23));
    }];
    
    [self.landingButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(wSelf.headBackView.mas_centerX).offset(-60);
        make.centerY.equalTo(wSelf.headBackView.mas_centerY);
        make.size.mas_equalTo(CGSizeMake(45, 23));
    }];
    
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(wSelf.view);
        make.height.mas_equalTo(176);
        make.top.equalTo(wSelf.headView.mas_bottom).offset(35);
    }];
}
#pragma mark - 代理
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44.0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cellID"];
    }
    cell.textLabel.text = self.titleArray[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:self.imageArray[indexPath.row]];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    if (indexPath.row == 3) {
        cell.detailTextLabel.text = @"4008886688";
    }
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}
#pragma mark - 懒加载
- (UIView *)headView{
    if (!_headView) {
        _headView = [[UIView alloc]init];
    }
    return _headView;
}
- (UIImageView *)headBackView{
    if (!_headBackView) {
        _headBackView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"我的背景"]];
    }
    return _headBackView;
}

- (UIButton *)loginButton{
    if (!_loginButton) {
        _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_loginButton setTitle:@"登录" forState:UIControlStateNormal];
        _loginButton.titleLabel.font = [UIFont systemFontOfSize:15];
        _loginButton.titleLabel.textColor = [UIColor whiteColor];
    }
    return _loginButton;
}

- (UIButton *)landingButton{
    if (!_landingButton) {
        _landingButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_landingButton setTitle:@"注册" forState:UIControlStateNormal];
        _landingButton.titleLabel.font = [UIFont systemFontOfSize:15];
        _landingButton.titleLabel.textColor = [UIColor whiteColor];
    }
    return _landingButton;
}

- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 0, 0) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.bounces = NO;
    }
    return _tableView;
}

- (NSArray *)titleArray{
    if (!_titleArray) {
        _titleArray = @[@"收藏",@"邀请好友",@"意见反馈",@"客服"];
    }
    return _titleArray;
}

- (NSArray *)imageArray{
    if (!_imageArray) {
        _imageArray = @[@"我的界面我的收藏图标",@"我的界面邀请好友图标",@"我的界面意见反馈图标",@"我的界面客服热线图标"];
    }
    return _imageArray;
}
@end
