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
        NSString *str = @"This is NSString2";
        
        NSString *result = [str substringFromIndex:6];
        NSLog(@"str : %@", result);
        
        NSString *result2 = [str substringToIndex:3];
        NSLog(@"str : %@", result2);
        
        NSString *result3 = [[str substringToIndex:11]substringFromIndex:8];
        NSLog(@"str : %@", result3);
        
        NSString *result4 = [str substringWithRange:NSMakeRange(8, 3)];
        NSLog(@"str : %@", result4);
        
        NSString *result5 = [[str substringWithRange:NSMakeRange(8, 3)] uppercaseString];
        NSLog(@"str : %@", result5);
        result5 = [[str substringWithRange:NSMakeRange(8, 3)] lowercaseString];
        NSLog(@"str : %@", result5);
    }
    return 0;
}
