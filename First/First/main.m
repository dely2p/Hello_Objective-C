//
//  main.m
//  First
//
//  Created by dely on 11/01/2020.
//  Copyright © 2020 dely. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Vehicle *hello = [Vehicle new]; // create instance object
//        hello.wheels = 4;
//        hello.seats = 2;
        [hello setWheels:4 Seats:2];
        if(hello.wheels == 4) {
            NSLog(@"wheels : 4");
        }else {
            NSLog(@"no");
        }
        switch (hello.seats) {
            case 4:
                NSLog(@"wheels : 4");
                break;
            case 2:
                NSLog(@"wheels : 2");
                break;
                
            default:
                NSLog(@"no");
                break;
        }
        
        NSLog(@"wheels : %i, seats : %i", [hello wheels], [hello seats]);
    }
    return 0;
}
