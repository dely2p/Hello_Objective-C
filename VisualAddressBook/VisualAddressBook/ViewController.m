//
//  ViewController.m
//  VisualAddressBook
//
//  Created by dely on 22/01/2020.
//  Copyright © 2020 dely. All rights reserved.
//

#import "ViewController.h"
#import "BookManager.h"
#import "Book.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize resultTextView;
@synthesize nameTextField, genreTextField, authorTextField;
@synthesize countLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    Book *book1 = [[Book alloc]init];
    book1.name = @"햄릿";
    book1.genre = @"비극";
    book1.author = @"셰익스피어";
    
    Book *book2 = [[Book alloc]init];
    book2.name = @"누구를 위하여 종을 울리나";
    book2.genre = @"전쟁소설";
    book2.author = @"헤밍웨이";
    
    Book *book3 = [[Book alloc]init];
    book3.name = @"죄와 벌";
    book3.genre = @"사실주의";
    book3.author = @"톨스토이";
    
    myBook = [[BookManager alloc]init];
    [myBook addBook: book1];
    [myBook addBook: book2];
    [myBook addBook: book3];
    
    countLabel.text = [NSString stringWithFormat: @"%li", [myBook countBook]];
}

-(IBAction)showAllBookAction: (id)sender {
//    NSLog(@"%@", [myBook showAllBook]);
    resultTextView.text = [myBook showAllBook];
    [resultTextView setText: [myBook showAllBook]];
}
-(IBAction)addBookAction: (id)sender {
    Book *bookTemp = [[Book alloc]init];
    bookTemp.name = nameTextField.text;
    bookTemp.genre = genreTextField.text;
    bookTemp.author = authorTextField.text;
    
    [myBook addBook: bookTemp];
    resultTextView.text = @"책이 추가되었습니다:)";
    countLabel.text = [NSString stringWithFormat: @"%li", [myBook countBook]];
}
-(IBAction)findBookAction:(id)sender {
    NSString *strTemp = [myBook findBook: nameTextField.text];
    if (strTemp != nil) {
        resultTextView.text = strTemp;
    }else {
        resultTextView.text = @"찾으시는 책이 없어요";
    }
}
-(IBAction)removeBookAction: (id)sender{
    NSString *strTemp = [myBook removeBook: nameTextField.text];
    if (strTemp != nil) {
        NSMutableString *str = [[NSMutableString alloc]init];
        [str appendString: strTemp];
        [str appendString: @"책이 삭제되었습니다"];
        resultTextView.text = str;
        countLabel.text = [NSString stringWithFormat: @"%li", [myBook countBook]];
    }else {
        resultTextView.text = @"삭제 할 책이 없어요";
    }
}
@end
