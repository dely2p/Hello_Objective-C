//
//  ViewController.m
//  DigitalFrame
//
//  Created by dely on 02/02/2020.
//  Copyright © 2020 dely. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imageView;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *cuteImages = [[NSArray alloc]initWithObjects:
                           [UIImage imageNamed: @"1.jpg"],
                           [UIImage imageNamed: @"2.jpg"],
                           [UIImage imageNamed: @"3.jpg"],
                           [UIImage imageNamed: @"4.jpg"],
                           [UIImage imageNamed: @"5.jpg"],
                           [UIImage imageNamed: @"6.jpg"],
                           [UIImage imageNamed: @"7.jpg"],
                           [UIImage imageNamed: @"8.jpg"],
                           [UIImage imageNamed: @"9.jpg"],
                           [UIImage imageNamed: @"10.jpg"],
                           [UIImage imageNamed: @"11.jpg"],
                           [UIImage imageNamed: @"12.jpg"],
                           [UIImage imageNamed: @"13.jpg"],
                           [UIImage imageNamed: @"14.jpg"],
                           [UIImage imageNamed: @"15.jpg"],
                           nil];
    imageView.animationImages = cuteImages;
    imageView.animationDuration = 15.0;
    [imageView startAnimating];
}


@end
