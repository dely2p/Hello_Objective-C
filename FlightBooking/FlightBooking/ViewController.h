//
//  ViewController.h
//  FlightBooking
//
//  Created by dely on 09/02/2020.
//  Copyright © 2020 dely. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *departureDateButton;
@property (weak, nonatomic) IBOutlet UILabel *returnDateLabel;
@property (weak, nonatomic) IBOutlet UIButton *returnDateButton;
@property (weak, nonatomic) IBOutlet UIDatePicker *selectDatePicker;
- (IBAction)showReturnDateAction:(id)sender;
- (IBAction)showDatePickerAction:(id)sender;
- (IBAction)selectDateAction:(id)sender;
@end

