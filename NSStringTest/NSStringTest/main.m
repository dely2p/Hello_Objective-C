//
//  main.m
//  NSStringTest
//
//  Created by dely on 12/01/2020.
//  Copyright © 2020 dely. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = [[NSString alloc]init];
        str = @"This is NSString";
        NSString *str2 = [[NSString alloc]initWithString: @"This is NSString2"]; // convenience method
        NSString *str3 = @"This is NSString2";
        
        NSLog(@"str : %@", str);
        NSLog(@"str : %@", str2);
        NSLog(@"str : %@", str3);
    }
    return 0;
}
