//
//  ViewController.m
//  NavigationBarOperation
//
//  Created by 紫冬 on 13-8-1.
//  Copyright (c) 2013年 qsji. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //设置导航栏的标题
    self.title = @"第一个ViewController";
    
}

//显示第二个viewController
-(IBAction)onCllickButtonToViewController2:(id)sender
{
    ViewController2 *viewController2 = [[ViewController2 alloc] initWithNibName:@"ViewController2" bundle:nil];
    [self.navigationController pushViewController:viewController2 animated:YES];
//    [self.navigationController presentViewController:viewController2 animated:YES completion:nil];
    
    [viewController2 release];
}



//单独创建导航栏，不依附于UINavigationController导航控制器
-(void)createNavigationBar
{
    //创建一个导航栏
    UINavigationBar *navigationBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    
    //创建一个导航栏集合
    UINavigationItem *navigationItem = [[UINavigationItem alloc] initWithTitle:nil];
    
    //创建一个左边按钮
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithTitle:@"左边"
                                                                   style:UIBarButtonItemStyleBordered
                                                                  target:self
                                                                  action:@selector(clickLeftButton)];
    
    //创建一个右边按钮
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"右边"
                                                                    style:UIBarButtonItemStyleDone
                                                                   target:self
                                                                   action:@selector(clickRightButton)];
    //设置导航栏内容
    [navigationItem setTitle:@"ji Programe"];
    
    
    //把导航栏集合添加入导航栏中，设置动画关闭
    [navigationBar pushNavigationItem:navigationItem animated:NO];
    
    //把左右两个按钮添加入导航栏集合中
    [navigationItem setLeftBarButtonItem:leftButton];
    [navigationItem setRightBarButtonItem:rightButton];
    
    //把导航栏添加到视图中
    [self.view addSubview:navigationBar];
    
    
    //释放对象
    [navigationItem release];
    [leftButton release];
    [rightButton release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
