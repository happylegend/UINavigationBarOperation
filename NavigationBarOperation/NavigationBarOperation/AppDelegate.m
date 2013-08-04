//
//  AppDelegate.m
//  NavigationBarOperation
//
//  Created by 紫冬 on 13-8-1.
//  Copyright (c) 2013年 qsji. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    self.window.backgroundColor = [UIColor whiteColor];
    // Override point for customization after application launch.
    
    //创建第一个界面，该界面也就是整个应用程序的RootViewController
    self.viewController = [[[ViewController alloc] initWithNibName:@"ViewController" bundle:nil] autorelease];
    
    //创建UINavigationController，导航控制器，并设置self.viewController为导航控制器的rootViewController
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
    
    //默认情况下，当使用了导航控制器以后就会自动显示导航栏，我们可以设置单行栏的显示或隐藏
    /*
    navigationController.navigationBar.hidden = YES;
    //或者
    navigationController.navigationBarHidden = YES;
     */
     
    
    //设置该导航控制器为整个应用程序窗体的rootViewController，理所当然的第一个viewController也就成了该应用程序窗体的rootViewController了
    self.window.rootViewController = navigationController;
    
    [self.window makeKeyAndVisible];
    [navigationController release];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
