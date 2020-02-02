//
//  ViewController.h
//  DigitalFrame
//
//  Created by dely on 02/02/2020.
//  Copyright © 2020 dely. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) IBOutlet UIButton *toggleButton;
-(IBAction)toggleAction: (id)sender;
@end

