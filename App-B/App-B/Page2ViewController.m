//
//  Page2ViewController.m
//  App-B
//
//  Created by YangLunlong on 16/9/14.
//  Copyright © 2016年 lianai911. All rights reserved.
//

#import "Page2ViewController.h"

@interface Page2ViewController ()

- (IBAction)page2BackToAppA:(id)sender;

@end

@implementation Page2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}


- (IBAction)page2BackToAppA:(id)sender {
    // 1.拿到对应应用程序的URL Scheme
    NSString *urlSchemeString = [[self.urlString componentsSeparatedByString:@"?"] lastObject];
    NSString *urlString = [urlSchemeString stringByAppendingString:@"://"];
    
    // 1.获取对应应用程序的URL
    NSURL *url = [NSURL URLWithString:urlString];
    
    // 2.判断是否可以打开
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        [[UIApplication sharedApplication] openURL:url];
    }
}
@end
