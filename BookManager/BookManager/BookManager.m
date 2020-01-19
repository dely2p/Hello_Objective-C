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

-(NSString *)showAllBook {
    NSMutableString *strTemp = [[NSMutableString alloc]init];
    for (Book *bookTemp in bookList) {
        [strTemp appendString: @"\n"];
        [strTemp appendString: @"Name : "];
        [strTemp appendString: bookTemp.name];
        [strTemp appendString: @"\n"];
        [strTemp appendString: @"Genre : "];
        [strTemp appendString: bookTemp.genre];
        [strTemp appendString: @"\n"];
        [strTemp appendString: @"Author : "];
        [strTemp appendString: bookTemp.author];
        [strTemp appendString: @"\n"];
        [strTemp appendString: @"-----------------------------"];
    }
    return strTemp;
}

-(NSInteger)countBook {
    return [bookList count];
}

-(NSString *)findBook: (NSString *)name {
    NSMutableString *strTemp = [[NSMutableString alloc]init];
    for (Book *bookTemp in bookList) {
        if([bookTemp.name isEqualToString: name]) {
            [strTemp appendString: @"\n"];
            [strTemp appendString: @"Name : "];
            [strTemp appendString: bookTemp.name];
            [strTemp appendString: @"\n"];
            [strTemp appendString: @"Genre : "];
            [strTemp appendString: bookTemp.genre];
            [strTemp appendString: @"\n"];
            [strTemp appendString: @"Author : "];
            [strTemp appendString: bookTemp.author];
            return strTemp;
        }
    }
    return nil;
}

@end
