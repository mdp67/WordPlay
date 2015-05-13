//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Mark Porcella on 5/12/15.
//  Copyright (c) 2015 Mark Porcella. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()
@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;

@end

@implementation ResultsViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    //NSLog(@"This is your name:  %@", self.name);
    //NSString *stringToEnter = [[NSString alloc] initwith@"%@ is the %@ person I know", self.name, self.adjective];


//    UIFont *fontText = [UIFont boldSystemFontOfSize:30];
//    NSDictionary *dictBoldText = [NSDictionary dictionaryWithObjectsAndKeys:fontText, NSFontAttributeName, nil];
//
//    NSString *string = @"test";
//    string = [string stringByAppendingString:@" this still works"];
//
//    NSLog(@"%@", string);
//
//    self.resultsTextView.attributedText = [[NSAttributedString alloc] initWithString:string attributes:dictBoldText];
    //self.resultsTextView.attributedText = [NSAttributedString alloc] initwith


//    NSString *string = @"test";
//    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:string];
//                                                                           //attributes:<#(NSDictionary *)#>]
//    self.resultsTextView.attributedText = string;
    NSString *stringToEnter = [[NSString alloc] initWithFormat:@"%@ is the %@ person I know", self.name, self.adjective];
    UIFont *fontText = [UIFont boldSystemFontOfSize:30];
    NSDictionary *dictBoldText = [NSDictionary dictionaryWithObjectsAndKeys:fontText, NSFontAttributeName, nil];
    NSMutableAttributedString *workingAttributedString = [[NSMutableAttributedString alloc] initWithString:stringToEnter];
    int lengthOfName = self.name.length;
    int lengthOfAdjective = self.adjective.length;
    int forSecondStartFormat = lengthOfName + 8;
    NSLog(@"name: %i", lengthOfName);
    NSLog(@"adjective %i", lengthOfAdjective);
    NSLog(@"Start %i", forSecondStartFormat);

    [workingAttributedString addAttributes:dictBoldText range:NSMakeRange(0, lengthOfName)];
    [workingAttributedString addAttributes:dictBoldText range:NSMakeRange(forSecondStartFormat, lengthOfAdjective)];
    self.resultsTextView.attributedText = workingAttributedString;


}



@end
