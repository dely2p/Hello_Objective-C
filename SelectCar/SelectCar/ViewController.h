//
//  ViewController.h
//  SelectCar
//
//  Created by dely on 10/02/2020.
//  Copyright © 2020 dely. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource> {
    NSArray *companyName;
    NSArray *tesla;
}
@property (weak, nonatomic) IBOutlet UIImageView *imgView;


@end

