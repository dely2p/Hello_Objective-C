//
//  Book.m
//  BookManager
//
//  Created by dely on 19/01/2020.
//  Copyright © 2020 dely. All rights reserved.
//

#import "Book.h"

@implementation Book

@synthesize name, genre, author;

-(void)bookPrint {
    NSLog(@"name : %@", name);
    NSLog(@"genre : %@", genre);
    NSLog(@"author : %@", author);
}
@end
