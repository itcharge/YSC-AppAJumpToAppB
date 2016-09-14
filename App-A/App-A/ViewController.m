//
//  ViewController.m
//  App-A
//
//  Created by YangLunlong on 16/9/14.
//  Copyright © 2016年 lianai911. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)jumpToAppB:(id)sender;

- (IBAction)jumpToAppBPage1:(id)sender;

- (IBAction)jumpToAppBPage2:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)jumpToAppB:(id)sender {
    // 1.获取应用程序App-B的URL Scheme
    NSURL *appBUrl = [NSURL URLWithString:@"AppB://?AppA"];
    
    // 2.判断手机中是否安装了对应程序
    if ([[UIApplication sharedApplication] canOpenURL:appBUrl]) {
        // 3. 打开应用程序App-B
        [[UIApplication sharedApplication] openURL:appBUrl];
    } else {
        NSLog(@"没有安装");
    }
}

- (IBAction)jumpToAppBPage1:(id)sender {
    // 1.获取应用程序App-B的Page1页面的URL
    NSURL *appBUrl = [NSURL URLWithString:@"AppB://Page1?AppA"];
    
    // 2.判断手机中是否安装了对应程序
    if ([[UIApplication sharedApplication] canOpenURL:appBUrl]) {
        // 3. 打开应用程序App-B的Page1页面
        [[UIApplication sharedApplication] openURL:appBUrl];
    } else {
        NSLog(@"没有安装");
    }
}

- (IBAction)jumpToAppBPage2:(id)sender {
    // 1.获取应用程序App-B的Page2页面的URL
    NSURL *appBUrl = [NSURL URLWithString:@"AppB://Page2?AppA"];
    
    // 2.判断手机中是否安装了对应程序
    if ([[UIApplication sharedApplication] canOpenURL:appBUrl]) {
        // 3. 打开应用程序App-B的Page2页面
        [[UIApplication sharedApplication] openURL:appBUrl];
    } else {
        NSLog(@"没有安装");
    }
}

@end




