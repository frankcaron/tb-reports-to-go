//
//  ViewController.m
//  reports-to-go
//
//  Created by Frank Caron on 2016-05-08.
//  Copyright © 2016 TouchBistro. All rights reserved.
//

#import "ViewController.h"
@import SafariServices;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Web View
    //Size and lock the web view
    self.webView.frame=self.view.bounds;
    self.webView.scalesPageToFit = YES;
    
    // Load the url into the webview
    NSURL *url = [NSURL URLWithString:@"https://cloud.touchbistro.com"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    // Load the web view
    [self.webView loadRequest:request];
    
    
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
