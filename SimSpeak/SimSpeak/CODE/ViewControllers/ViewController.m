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
    
    // Set Screen Index
    screenIndex = 1;
    NSString *paddedIndex = [NSString stringWithFormat:@"%02d", screenIndex];
    
    // Load Fonts
    titleFont = [UIFont fontWithName:@"LeituraSans-Grot2" size:48];
    subtitleFont = [UIFont fontWithName:@"Leitura Sans" size:36];
    bodyFont = [UIFont fontWithName:@"LeituraSans-Grot2" size:14];
    
    // Load PList
    NSString *pathToPlistFile = [[NSBundle mainBundle] pathForResource:paddedIndex ofType:@"plist"];
    NSArray *titleText = [[NSArray alloc] initWithContentsOfFile:pathToPlistFile];
    
    // Load TXT
    NSString *pathToTextFile = [[NSBundle mainBundle] pathForResource:paddedIndex ofType:@"txt"];
    NSString *bodyText = [NSString stringWithContentsOfFile:pathToTextFile encoding:NSUTF8StringEncoding error:NULL];
    
    // Set Title
    title.text = [titleText objectAtIndex:0];
    title.font = titleFont;
    
    // Set Subtitle
    subtitle.text = [titleText objectAtIndex:1];
    subtitle.font = titleFont;
    
    // Set Body
    body.editable = NO;
    body.text = bodyText;
    body.font = bodyFont;

}

- (void) setNewScreen {
    
}



@end
