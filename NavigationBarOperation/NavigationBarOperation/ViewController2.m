//
//  ViewController2.m
//  NavigationBarOperation
//
//  Created by 紫冬 on 13-8-3.
//  Copyright (c) 2013年 qsji. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

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
    // Do any additional setup after loading the view from its nib.
    
    //那么如果我们想在第二个viewController中自定义左右按钮，那么我们就要在第二个viewController的viewDidLoad中自定义
    //navigationItem的leftBarButtonItem和rightBarButtonItem
    //自定义导航栏的左右按钮也即是leftBarButtonItem和rightBarButtonItem
    UIBarButtonItem *barButtonItemBack = [[UIBarButtonItem alloc] initWithTitle:@"返回上一个" style:UIBarButtonItemStylePlain target:self action:@selector(backToPreviewViewController)];
    self.navigationItem.leftBarButtonItem = barButtonItemBack;
    
    UIBarButtonItem *barButtonItemNext = [[UIBarButtonItem alloc] initWithTitle:@"下一个" style:UIBarButtonItemStylePlain target:self action:@selector(showNextViewController)];
    self.navigationItem.rightBarButtonItem = barButtonItemNext;
    
    
    //如果在第三个viewController的导航栏左边显示系统的返回按钮，默认的是显示的back或者是上一个viewController的名字，那么我们就要在
    //前一个viewController的viewDidLoad中自定义navigationItem的backBarButtonItem
    //实现自定义名字的方法，使用的是backBarButtonItem
    UIBarButtonItem *barButtonItemBackToViewController2 = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.backBarButtonItem = barButtonItemBackToViewController2;
    
    
    
    
}

-(void)backToPreviewViewController
{
    [self.navigationController popViewControllerAnimated:YES];
    
}


-(void)showNextViewController
{
    ViewController3 *viewController3 = [[ViewController3 alloc] initWithNibName:@"ViewController3" bundle:nil];
    [self.navigationController pushViewController:viewController3 animated:YES];
//    [self.navigationController presentViewController:viewController3 animated:YES completion:nil];
    [viewController3 release];
}


-(IBAction)onClickButtonBackToViewController1:(id)sender
{
//    [self dismissViewControllerAnimated:YES completion:nil];
    [self.navigationController popViewControllerAnimated:YES];
//    [self.navigationController popToViewController:nil animated:YES];
//    [self.navigationController popToRootViewControllerAnimated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
