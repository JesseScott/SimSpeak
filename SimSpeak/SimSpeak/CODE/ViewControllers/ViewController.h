//
//  ViewController.h
//  SimSpeak
//
//  Created by Jesse Scott on 2014-08-21.
//  Copyright (c) 2014 jesses.co.tt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    // Screen Index
    NSInteger screenIndex;
    
    // Custom Font
    UIFont *titleFont, *subtitleFont, *bodyFont;
}

@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *subtitle;
@property (weak, nonatomic) IBOutlet UITextView *body;


@end
