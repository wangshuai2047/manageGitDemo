//
//  ViewController.m
//  manageGitDemo
//
//  Created by 王帅 on 16/8/29.
//  Copyright © 2016年 王帅. All rights reserved.
//

#import "ViewController.h"
#import "WSTwoViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake((self.view.frame.size.width - 100)/2, 100, 100, 30);
    [btn setTitle:@"下一页" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    btn.layer.cornerRadius = 5;
    btn.layer.masksToBounds = YES;
    btn.layer.borderWidth = 0.5;
    btn.layer.borderColor = [UIColor orangeColor].CGColor;
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)btnClick:(UIButton*)sender
{
    WSTwoViewController *twoVc = [[WSTwoViewController alloc]init];
    [self.navigationController pushViewController:twoVc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
