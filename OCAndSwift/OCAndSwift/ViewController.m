//
//  ViewController.m
//  OCAndSwift
//
//  Created by 李旭 on 16/8/4.
//  Copyright © 2016年 李旭. All rights reserved.
//

#import "ViewController.h"
#import "OCAndSwift-swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self testSingleton];
    
    UIButton *pushBtn = [[UIButton alloc] initWithFrame:CGRectMake(50, 100,  200, 44)];
    pushBtn.backgroundColor = [UIColor redColor];
    [pushBtn setTitle:@"OCVC push To SwiftVC" forState:UIControlStateNormal];
    [pushBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [pushBtn addTarget:self action:@selector(pushBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushBtn];
}

- (void)testSingleton
{
    LXSingleton *singleton = [LXSingleton shareInstance];
    singleton.iVal = 10;
    LXSingleton * newSingleton = [LXSingleton shareInstance];
    NSLog(@"testSingleton:%ld", (long)newSingleton.iVal);
}

- (void)pushBtnClicked:(UIButton *)sender
{
    SwiftController *swiftVC = [[SwiftController alloc] init];
    [self.navigationController pushViewController:swiftVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
