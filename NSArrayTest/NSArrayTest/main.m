//
//  main.m
//  NSArrayTest
//
//  Created by dely on 15/01/2020.
//  Copyright © 2020 dely. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *month = [[NSArray alloc]initWithObjects:@"January", @"February", @"March", @"April", @"June", @"July", @"Auguest", @"September", nil];
        
        for (int i=0;i<[month count];i++){
            NSLog(@"month : %@", [month objectAtIndex:i]);
        }
        for (NSString *strTemp in month){
            NSLog(@"month : %@", strTemp);
        }
        
        NSMutableArray *mmonth = [NSMutableArray arrayWithArray: month];
        
        [mmonth addObject: @"October"];
        [mmonth addObject: @"November"];
        [mmonth addObject: @"December"];
        
        for(NSString *strTemp in mmonth) {
            NSLog(@"month : %@", strTemp);
        }
    }
    return 0;
}
