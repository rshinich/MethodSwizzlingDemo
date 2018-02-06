//
//  MSThirdViewController.m
//  MethodSwizzlingDemo
//
//  Created by 张忠瑞 on 2018/2/6.
//  Copyright © 2018年 张忠瑞. All rights reserved.
//

#import "MSThirdViewController.h"
#import "UIViewController+MethodSwizzling.h"

@interface MSThirdViewController ()

@end

@implementation MSThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
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
