//
//  Vehicle.h
//  First
//
//  Created by dely on 12/01/2020.
//  Copyright © 2020 dely. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Vehicle : NSObject {
    // member variable
    int wheels;
    int seats;
}
@property int wheels;
@property int seats;
-(void)setWheels: (int)w Seats: (int)s;
-(void)print;

@end

NS_ASSUME_NONNULL_END
