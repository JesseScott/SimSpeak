//
//  ViewController.m
//  SimSpeak
//
//  Created by Jesse Scott on 2014-08-21.
//  Copyright (c) 2014 jesses.co.tt. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

@synthesize title, subtitle, body;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Init
    screenIndex = 2;
    
    // Load Fonts
    //titleFont = [UIFont fontWithName:@"LeituraSans-Grot2" size:48];
    //subtitleFont = [UIFont fontWithName:@"Leitura Sans" size:36];
    //bodyFont = [UIFont fontWithName:@"LeituraSans-Grot2" size:14];
    
    // Set Initial Screen
    [self setNewScreen:screenIndex];

}

- (void) setNewScreen: (NSInteger) screen {

    NSString *paddedIndex = [NSString stringWithFormat:@"%02d", screen];
    [self setTitleSection:paddedIndex];
    [self setBodySection:paddedIndex];

}

- (void) setTitleSection: (NSString*) screen {
    
    // Load PList
    NSString *pathToPlistFile = [[NSBundle mainBundle] pathForResource:screen ofType:@"plist"];
    NSArray *titleText = [[NSArray alloc] initWithContentsOfFile:pathToPlistFile];
    
    // Set Title
    title.text = [titleText objectAtIndex:0];
    //title.font = titleFont;
    
    // Set Subtitle
    subtitle.text = [titleText objectAtIndex:1];
    //subtitle.font = titleFont;

}

- (void) setBodySection: (NSString*) screen {
    
    // Load TXT
    NSString *pathToTextFile = [[NSBundle mainBundle] pathForResource:screen ofType:@"txt"];
    NSString *bodyText = [NSString stringWithContentsOfFile:pathToTextFile encoding:NSUTF8StringEncoding error:NULL];

    // Set Body
    body.editable = NO;
    body.text = bodyText;
    //body.font = bodyFont;
    
}





@end
