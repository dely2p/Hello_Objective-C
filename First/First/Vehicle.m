//
//  Vehicle.m
//  First
//
//  Created by dely on 12/01/2020.
//  Copyright © 2020 dely. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle
@synthesize wheels;
@synthesize seats;

-(void)setWheels: (int)w Seats: (int)s {
    wheels = w;
    seats = s;
}

-(void)print {
    NSLog(@"wheels : %i, seats : %i", wheels, seats);
}
@end
