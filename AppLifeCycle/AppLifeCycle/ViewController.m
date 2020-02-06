//
//  ViewController.m
//  AppLifeCycle
//
//  Created by Eunjin on 06/02/2020.
//  Copyright © 2020 Eunjin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//- (void)loadView {
//    [super loadView];
//    NSLog(@"loadView");
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
}

- (void)viewWillAppear:(BOOL)animated {
     NSLog(@"viewWillAppear");
}

- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"viewDidAppear");
}

- (void)viewWillDisappear:(BOOL)animated {
    NSLog(@"viewWillDisappear");
}

- (void)viewDidDisappear:(BOOL)animated {
    NSLog(@"viewDidDisappear");
}

@end
