//
//  ViewController.m
//  SelectCar
//
//  Created by dely on 10/02/2020.
//  Copyright © 2020 dely. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imgView;
- (void)viewDidLoad {
    [super viewDidLoad];
    companyName = [[NSArray alloc]initWithObjects: @"테슬라", @"람보르기니", @"포르쉐", nil];
    tesla = [[NSArray alloc]initWithObjects: @"모델S", @"모델X", nil];
    
}

-(NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
    return 2;
}

-(NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if(component == 0){
        return companyName.count;
    }else {
        return tesla.count;
    }
}

@end
