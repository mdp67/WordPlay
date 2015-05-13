//
//  ViewController.m
//  WordPlay
//
//  Created by Mark Porcella on 5/12/15.
//  Copyright (c) 2015 Mark Porcella. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *string = @"test";
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:string];
    //attributes:<#(NSDictionary *)#>]
    NSLog(@"This is your test: %@", attributedString);
}

-(IBAction)prepareForUnwindCoded:(UIStoryboardSegue *)segue {

}

@end
