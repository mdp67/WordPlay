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
    NSDictionary *dictBoldText = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont boldSystemFontOfSize:60], NSFontAttributeName,
                                                                            [UIColor redColor], NSStrokeColorAttributeName,
                                                                            @-3.0, NSStrokeWidthAttributeName,
                                                                            [UIColor redColor], NSBackgroundColorAttributeName,
                                                                              nil];

    NSMutableAttributedString *name = [[NSMutableAttributedString alloc] initWithString:self.name attributes:dictBoldText];
    NSMutableAttributedString *secondMutAttString = [[NSMutableAttributedString alloc] initWithString:@" is the "];
    NSMutableAttributedString *adjectiveMuttAttString = [[NSMutableAttributedString alloc] initWithString:self.adjective attributes:dictBoldText];
    NSMutableAttributedString *lastMutAttString = [[NSMutableAttributedString alloc] initWithString:@" person I know"];
    [name appendAttributedString:secondMutAttString];
    [name appendAttributedString:adjectiveMuttAttString];
    [name appendAttributedString:lastMutAttString];
    self.resultsTextView.attributedText = name;

}

@end
