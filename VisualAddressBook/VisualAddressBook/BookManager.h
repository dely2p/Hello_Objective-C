//
//  BookManager.h
//  BookManager
//
//  Created by dely on 19/01/2020.
//  Copyright © 2020 dely. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Book;
NS_ASSUME_NONNULL_BEGIN

@interface BookManager : NSObject {
    NSMutableArray *bookList;
}

-(void)addBook: (Book *)bookObject;
-(NSString *)showAllBook;
-(NSInteger)countBook;
-(NSString *)findBook: (NSString *)name;
-(NSString *)removeBook: (NSString *)name;

@end

NS_ASSUME_NONNULL_END
