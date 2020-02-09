//
//  ViewController.m
//  MiniBrowser
//
//  Created by dely on 09/02/2020.
//  Copyright © 2020 dely. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize mainWebView, urlTextField, bookmarkSegmentedControl;
- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *urlString = @"http://www.facebook.com";
    [mainWebView loadRequest: [NSURLRequest requestWithURL: [NSURL URLWithString: urlString]]];
    urlTextField.text = urlString;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSString *urlString = urlTextField.text;
    
    if(![urlString hasPrefix: @"http://"]) {
        urlString = [[NSString alloc]initWithFormat: @"http://%@", urlString];
    }
    
    [mainWebView loadRequest: [NSURLRequest requestWithURL: [NSURL URLWithString: urlString]]];
    [textField resignFirstResponder];
    return YES;
}
- (IBAction)bookmarkAction:(id)sender {
    NSString *bookmarkURL = [bookmarkSegmentedControl titleForSegmentAtIndex: bookmarkSegmentedControl.selectedSegmentIndex];
    NSString *urlString = [[NSString alloc]initWithFormat: @"http://www.%@.com", bookmarkURL];
    [mainWebView loadRequest: [NSURLRequest requestWithURL: [NSURL URLWithString: urlString]]];
    urlTextField.text = urlString;
}

- (IBAction)backAction:(id)sender {
    [mainWebView goBack];
}

- (IBAction)forwardAction:(id)sender {
    [mainWebView goForward];
}

- (IBAction)stopAction:(id)sender {
    [mainWebView stopLoading];
}

- (IBAction)refreshAction:(id)sender {
    [mainWebView reload];
}

@end
