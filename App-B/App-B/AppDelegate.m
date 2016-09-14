//
//  AppDelegate.m
//  App-B
//
//  Created by YangLunlong on 16/9/14.
//  Copyright © 2016年 lianai911. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    // 1.获取导航栏控制器
    UINavigationController *rootNav = (UINavigationController *)self.window.rootViewController;
    // 2.获得主控制器
    ViewController *mainVc = [rootNav.childViewControllers firstObject];
    
    // 保存完整的App-A的URL给主控制器
    mainVc.urlString = url.absoluteString;
    
    // 3.每次跳转前必须是在跟控制器(细节)
    [rootNav popToRootViewControllerAnimated:NO];
    
    // 4.根据字符串关键字来跳转到不同页面
    if ([url.absoluteString containsString:@"Page1"]) { // 跳转到应用App-B的Page1页面
        // 根据segue标示进行跳转
        [mainVc performSegueWithIdentifier:@"homeToPage1" sender:nil];
    } else if ([url.absoluteString containsString:@"Page2"]) { // 跳转到应用App-B的Page2页面
        // 根据segue标示进行跳转
        [mainVc performSegueWithIdentifier:@"homeToPage2" sender:nil];
    }
    
    return YES;
}

@end
