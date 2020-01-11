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
// member method
-(void)setWheels: (int)w;
-(void)setSeats: (int)s;
-(int)wheels;
-(int)seats;
-(void)print;

@end

@implementation Vehicle
-(void)setWheels: (int)w {
    wheels = w;
}
-(void)setSeats: (int)s {
    seats = s;
}
-(void)print {
    NSLog(@"wheels : %i, seats : %i", wheels, seats);
}
-(int)wheels {
    return wheels;
}
-(int)seats {
    return seats;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Vehicle *hello = [Vehicle new]; // create instance object
        [hello setWheels: 4];
        [hello setSeats: 2];
        
//        [hello print];
        NSLog(@"wheels : %i, seats : %i", [hello wheels], [hello seats]);
    }
    return 0;
}
