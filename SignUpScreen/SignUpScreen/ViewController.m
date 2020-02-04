//
//  ViewController.m
//  SignUpScreen
//
//  Created by Eunjin on 04/02/2020.
//  Copyright © 2020 Eunjin. All rights reserved.
//

#import "ViewController.h"
#import <Header.h>
@interface ViewController ()

@end

@implementation ViewController
@synthesize nameTextField, idTextField, passwordTextField, telTextField, blogTextField, resultTextView;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)signUpAction: (id)sender {
    resultTextView.text = [NSString stringWithFormat: @"%@ 님 가입을 축하드립니다.", nameTextField.text];
}

@end
