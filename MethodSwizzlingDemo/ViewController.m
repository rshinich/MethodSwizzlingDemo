//
//  ViewController.m
//  MethodSwizzlingDemo
//
//  Created by 张忠瑞 on 2018/2/6.
//  Copyright © 2018年 张忠瑞. All rights reserved.
//

#import "ViewController.h"

#import "UIViewController+MethodSwizzling.h"

#import "MSFirstViewController.h"
#import "MSSecondViewController.h"
#import "MSThirdViewController.h"
#import "MSFourthViewController.h"
#import "MSFifthViewController.h"

#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setUpBtns];
}

- (void)setUpBtns
{
    UIButton *firstBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    firstBtn.frame = CGRectMake(0, 0, WIDTH, HEIGHT/5);
    [firstBtn setTitle:@"FirstVC" forState:UIControlStateNormal];
    [firstBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [firstBtn addTarget:self action:@selector(firstBtnClicked) forControlEvents:UIControlEventTouchUpInside];

    UIButton *secondBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    secondBtn.frame = CGRectMake(0, HEIGHT/5, WIDTH, HEIGHT/5);
    [secondBtn setTitle:@"SecondVC" forState:UIControlStateNormal];
    [secondBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [secondBtn addTarget:self action:@selector(secondBtnClicked) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *thirdBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    thirdBtn.frame = CGRectMake(0, HEIGHT*2/5, WIDTH, HEIGHT/5);
    [thirdBtn setTitle:@"ThirdVC" forState:UIControlStateNormal];
    [thirdBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [thirdBtn addTarget:self action:@selector(thirdBtnClicked) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *fourthBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    fourthBtn.frame = CGRectMake(0, HEIGHT*3/5, WIDTH, HEIGHT/5);
    [fourthBtn setTitle:@"FourthVC" forState:UIControlStateNormal];
    [fourthBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [fourthBtn addTarget:self action:@selector(fourBtnClicked) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *fifthBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    fifthBtn.frame = CGRectMake(0, HEIGHT*4/5, WIDTH, HEIGHT/5);
    [fifthBtn setTitle:@"FifthVC" forState:UIControlStateNormal];
    [fifthBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [fifthBtn addTarget:self action:@selector(fifthBtnClicked) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:firstBtn];
    [self.view addSubview:secondBtn];
    [self.view addSubview:thirdBtn];
    [self.view addSubview:fourthBtn];
    [self.view addSubview:fifthBtn];
}

#pragma mark -
#pragma mark - events

- (void)firstBtnClicked
{
    MSFirstViewController *vc = [[MSFirstViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)secondBtnClicked
{
    MSSecondViewController *vc = [[MSSecondViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)thirdBtnClicked
{
    MSThirdViewController *vc = [[MSThirdViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)fourBtnClicked
{
    MSFourthViewController *vc = [[MSFourthViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)fifthBtnClicked
{
    MSFifthViewController *vc = [[MSFifthViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
