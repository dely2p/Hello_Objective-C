//
//  ViewController.h
//  SelectCar
//
//  Created by dely on 10/02/2020.
//  Copyright © 2020 dely. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate> {
    NSArray *companyName;
    
    NSArray *carModel;
    NSArray *carModelImage;
    
    NSArray *tesla;
    NSArray *teslaImageNames;
    NSArray *lamborghini;
    NSArray *lamborghiniImageNames;
    NSArray *porsche;
    NSArray *porscheImageNames;
}
@property (weak, nonatomic) IBOutlet UIImageView *imgView;


@end

