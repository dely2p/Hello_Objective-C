//
//  ViewController.h
//  MiniBrowser
//
//  Created by dely on 09/02/2020.
//  Copyright © 2020 dely. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
@interface ViewController : UIViewController<UITextFieldDelegate, UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UISegmentedControl *bookmarkSegmentedControl;
@property (weak, nonatomic) IBOutlet UITextField *urlTextField;
@property (weak, nonatomic) IBOutlet WKWebView *mainWebView;
- (IBAction)bookmarkAction:(id)sender;
- (IBAction)backAction:(id)sender;
- (IBAction)forwardAction:(id)sender;
- (IBAction)stopAction:(id)sender;
- (IBAction)refreshAction:(id)sender;
@end

