//
//  ViewController.h
//  SignUpScreen
//
//  Created by Eunjin on 04/02/2020.
//  Copyright © 2020 Eunjin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *idTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UITextField *telTextField;
@property (weak, nonatomic) IBOutlet UITextField *blogTextField;
@property (weak, nonatomic) IBOutlet UITextView *resultTextView;
- (IBAction)signUpAction: (id)sender;
@end

