//
//  BookManager.m
//  BookManager
//
//  Created by dely on 19/01/2020.
//  Copyright © 2020 dely. All rights reserved.
//

#import "BookManager.h"
#import "Book.h"
@implementation BookManager

-(id)init {
    self = [super init];
    if (self) {
        bookList = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)addBook:(Book *)bookObject {
    [bookList addObject: bookObject];
}

@end
