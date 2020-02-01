//
//  ViewController.h
//  VisualAddressBook
//
//  Created by dely on 22/01/2020.
//  Copyright © 2020 dely. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BookManager;
@interface ViewController : UIViewController {
    BookManager *myBook;
}

@property (nonatomic, strong) IBOutlet UITextView *resultTextView;
@property (nonatomic, strong) IBOutlet UITextField *nameTextField;
@property (nonatomic, strong) IBOutlet UITextField *genreTextField;
@property (nonatomic, strong) IBOutlet UITextField *authorTextField;

-(IBAction)showAllBookAction: (id)sender;
-(IBAction)addBookAction: (id)sender;
-(IBAction)findBookAction: (id)sender;
-(IBAction)removeBookAction: (id)sender;

@end

