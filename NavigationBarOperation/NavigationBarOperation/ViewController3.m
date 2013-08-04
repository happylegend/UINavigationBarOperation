//
//  ViewController3.m
//  NavigationBarOperation
//
//  Created by 紫冬 on 13-8-4.
//  Copyright (c) 2013年 qsji. All rights reserved.
//

#import "ViewController3.h"

@interface ViewController3 ()

@end

@implementation ViewController3

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //实现导航栏多个按钮切换
    [self createNavigationBar];
    
    //默认显示
    labelItemName.text = [arrayButtonNames objectAtIndex:0];
}


//创建一个多个item切换的导航栏
-(void)createNavigationBar
{
    //创建一个导航栏
    UINavigationBar *navigationBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    
    //创建一个导航栏集合
    UINavigationItem *navigationItem = [[UINavigationItem alloc] initWithTitle:nil];
    
    
    //向导航栏集合中添加横向按钮列表
    arrayButtonNames = [[NSArray arrayWithObjects:@"雨松MOMO", @"若若娃", @"小可爱", @"哇咔咔", nil] retain];
    UISegmentedControl* segmentedControl = [[UISegmentedControl alloc] initWithItems:arrayButtonNames];
    
    //设置横向按钮风格
    segmentedControl.segmentedControlStyle = UISegmentedControlStyleBar;
    
    //添加按钮响应事件
    [segmentedControl addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventValueChanged];
    
    
    //把导航栏集合添加入导航栏中，设置动画关闭
    [navigationBar pushNavigationItem:navigationItem animated:NO];
    
    //将横向列表添加到导航栏
    navigationItem.titleView = segmentedControl;
    
    //把导航栏添加到视图中
    [self.view addSubview:navigationBar];
    
    
    //释放对象
    [navigationItem release];
    [segmentedControl release];
}


-(void) buttonAction: (UISegmentedControl *) sender
{
    //得到按钮点击索引
	NSInteger index = sender.selectedSegmentIndex;
    
    //算出对应图片名称
    NSString *show = [NSString stringWithFormat:@"%d%@",index,@".jpg"];
	
    //通过tag得到视图对象
    UIImageView *imageView = (UIImageView *)[self.view viewWithTag:10];
    
    //绘制新图片
    [imageView setImage:[UIImage imageNamed:show]];
    
    //显示对应的item的名字
    labelItemName.text = [arrayButtonNames objectAtIndex:index];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
