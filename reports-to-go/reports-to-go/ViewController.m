//
//  ViewController.m
//  reports-to-go
//
//  Created by Frank Caron on 2016-05-08.
//  Copyright © 2016 TouchBistro. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Size and lock the web view
    self.webView.frame=self.view.bounds;
    self.webView.scalesPageToFit = YES;
    
    // Load the url into the webview
    NSURL *url = [NSURL URLWithString:@"https://cloud.touchbistro.com"];
    [self.webView loadRequest:[NSURLRequest requestWithURL:url]];
    
    // Save cookies
    [[[UIApplication sharedApplication] delegate] performSelector:@selector(saveCookies)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
