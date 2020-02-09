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
    returnDateLabel.hidden = YES;
    returnDateButton.hidden = YES;
    selectDatePicker.hidden = YES;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing: YES];
    selectDatePicker.hidden = YES;
}

- (IBAction)showReturnDateAction:(id)sender {
    if(returnDateButton.hidden == YES) {
        returnDateLabel.hidden = NO;
        returnDateButton.hidden = NO;
    }else {
        returnDateLabel.hidden = YES;
        returnDateButton.hidden = YES;
    }
}

- (IBAction)showDatePickerAction:(id)sender {
    selectDatePicker.hidden = NO;
}

- (IBAction)selectDateAction:(id)sender {
    NSLog(@"description : %@", [sender description]);
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"YY-MM-dd hh:mma";
    
    NSString *dateString = [formatter stringFromDate: [selectDatePicker date]];
    NSLog(@"%@", dateString);
    [departureDateButton setTitle: dateString forState: UIControlStateNormal];
}
@end
