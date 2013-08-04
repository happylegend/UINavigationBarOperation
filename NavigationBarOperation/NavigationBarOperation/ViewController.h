//
//  ViewController.h
//  NavigationBarOperation
//
//  Created by 紫冬 on 13-8-1.
//  Copyright (c) 2013年 qsji. All rights reserved.
//

/*
 当使用了UINavigationController导航控制器以后就会自动显示导航栏，我们可以设置单行栏的显示或隐藏
 UINavigationController导航控制器操作中常用的UI对象：
 UINavigationBar:导航栏
 UINavigationItem:导航栏上面的item，其实就是按钮
 
 导航控制器的用法：
 第一：创建视图控制器mViewController
 第二：创建导航控制器对象，并将mViewController设置为它的RootViewController
 第三：再将导航控制器对象设置为应用程序窗体window的RootViewController
 
 UINavigationController切换视图有两种方式
 第一种：从侧面切换视图
        [self.navigationController pushViewController:viewController2 animated:YES];
        如果用push退出的viewController，返回的时候只能用pop函数，即push函数对应pop函数
        [self.navigationController popViewControllerAnimated:YES];
        [self.navigationController popToViewController:nil animated:YES];
        [self.navigationController popToRootViewControllerAnimated:YES];
 
 第二种：从下往上切换视图
        [self.navigationController presentViewController:viewController2 animated:YES completion:nil];
        当使用present函数切换视图的时候，不显示导航栏
        对应
        [self.navigationController dismissViewControllerAnimated:YES completion:nil];
 */


/*
 如果不用UINavigationController，那么切换视图只能用present函数和dismiss函数，是用viewController来切换
 所以直接使用：
 [self presentViewController:viewController2 animated:YES completion:nil];
 [self dismissViewControllerAnimated:YES completion:nil];
 */


/*
 当然我们也可以单独的使用导航栏，不使用UINavigationController导航控制器
 这样的好处是我们不用依附于UINavigationController
 步骤：
 第一：创建导航栏
 第二：创建导航栏集合
 第三：创建导航栏按钮，并设置左右按钮
 第四：将导航栏添加到视图中
 */

/*
 主要是讲解一下导航栏的基本用法：
 第一：导航栏的显示和隐藏
 第二：导航栏的背景图片更改
 第三：导航栏的按钮
 第四：导航栏的标题
 */

#import <UIKit/UIKit.h>
#import "ViewController2.h"

@interface ViewController : UIViewController
{
    IBOutlet UIButton *buttonToViewController2;
}

-(IBAction)onCllickButtonToViewController2:(id)sender;

@end
