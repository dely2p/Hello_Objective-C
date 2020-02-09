//
//  ViewController.m
//  FlightBooking
//
//  Created by dely on 09/02/2020.
//  Copyright © 2020 dely. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize returnDateLabel, returnDateButton, selectDatePicker, departureDateButton;
- (void)viewDidLoad {
    [super viewDidLoad];
    buttonTag = 0;
    returnDateLabel.hidden = YES;
    returnDateButton.hidden = YES;
    selectDatePicker.hidden = YES;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing: YES];
    selectDatePicker.hidden = YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)showReturnDateAction:(id)sender {
    returnDateLabel.hidden = ![sender isOn];
    returnDateButton.hidden = ![sender isOn];
}

- (IBAction)showDatePickerAction:(id)sender {
    selectDatePicker.hidden = NO;
    buttonTag = [sender tag];
}

- (IBAction)selectDateAction:(id)sender {
    NSLog(@"description : %@", [sender description]);
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"YY-MM-dd hh:mma";
    
    NSString *dateString = [formatter stringFromDate: [selectDatePicker date]];
    NSLog(@"%@", dateString);
    if(buttonTag == 0) {
        [departureDateButton setTitle: dateString forState: UIControlStateNormal];
    }else {
        [returnDateButton setTitle: dateString forState: UIControlStateNormal];
    }
}
@end
