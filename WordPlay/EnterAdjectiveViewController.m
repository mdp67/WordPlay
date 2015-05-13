//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by Mark Porcella on 5/12/15.
//  Copyright (c) 2015 Mark Porcella. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "ResultsViewController.h"

@interface EnterAdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *enterAdjectiveTextField;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if ([self.enterAdjectiveTextField.text isEqual:@""]) {
        return NO;
    } else {
        return YES;
    }
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ResultsViewController *vc = segue.destinationViewController;
    vc.name = self.name;
    vc.adjective = self.enterAdjectiveTextField.text;
}

@end
