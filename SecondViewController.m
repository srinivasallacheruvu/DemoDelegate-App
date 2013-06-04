//
//  SecondViewController.m
//  DemoDelegateApp
//
//  Created by Karthik on 04/06/13.
//  Copyright (c) 2013 Karthik. All rights reserved.
//

#import "SecondViewController.h"



@implementation SecondViewController
@synthesize firstTextField=_firstTextField;
@synthesize  secondTextField=_secondTextField;
@synthesize delegate=_delegate;

- (IBAction)Add:(id)sender {
    
    [_delegate sum:[_firstTextField.text intValue]  secondparam:[_secondTextField.text intValue]];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)Mul:(id)sender {
    [_delegate mul:[_firstTextField.text intValue] secondvalue:[_secondTextField.text intValue]];
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(IBAction)goawayKeyboard:(id)sender{
    [sender resignFirstResponder];
    
}
-(IBAction)backgroudTap:(id)sender{
    [_firstTextField resignFirstResponder];
    [_secondTextField resignFirstResponder];
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
