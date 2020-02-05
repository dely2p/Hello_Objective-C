//
//  ViewController.m
//  SignUpScreen
//
//  Created by Eunjin on 04/02/2020.
//  Copyright © 2020 Eunjin. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize nameTextField, idTextField, passwordTextField, telTextField, blogTextField, resultTextView;
- (void)viewDidLoad {
    [super viewDidLoad];
//    nameTextField.delegate = self;
//    idTextField.delegate = self;
}
- (IBAction)signUpAction: (id)sender {
    resultTextView.text = [NSString stringWithFormat: @"%@ 님 가입을 축하드립니다.", nameTextField.text];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing: YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSLog(@"textFieldShouldReturn");
//    [nameTextField resignFirstResponder]; //UIResponder
//    [idTextField resignFirstResponder];
    [textField resignFirstResponder];
    return YES;;
}

@end
