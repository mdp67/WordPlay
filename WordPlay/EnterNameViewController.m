//
//  EnterNameViewController.m
//  WordPlay
//
//  Created by Mark Porcella on 5/12/15.
//  Copyright (c) 2015 Mark Porcella. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h"

@interface EnterNameViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation EnterNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];


}

#pragma mark - Navigation



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    EnterAdjectiveViewController *vc = segue.destinationViewController;
    vc.name = self.nameTextField.text;
}


-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if ([self.nameTextField.text isEqual:@""]) {
        return NO;
    } else {
        return YES;
    }
}

@end
