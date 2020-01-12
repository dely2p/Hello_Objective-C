//
//  main.m
//  First
//
//  Created by dely on 11/01/2020.
//  Copyright © 2020 dely. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject {
    // member variable
    int wheels;
    int seats;
}
@property int wheels;
@property int seats;
-(void)print;

@end

@implementation Vehicle
@synthesize wheels;
@synthesize seats;

-(void)print {
    NSLog(@"wheels : %i, seats : %i", wheels, seats);
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Vehicle *hello = [Vehicle new]; // create instance object
        hello.wheels = 4;
        hello.seats = 2;
        
        NSLog(@"wheels : %i, seats : %i", [hello wheels], [hello seats]);
    }
    return 0;
}
