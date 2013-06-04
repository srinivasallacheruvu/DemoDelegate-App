//
//  demodelegateViewController.m
//  DemoDelegateApp
//
//  Created by Karthik on 04/06/13.
//  Copyright (c) 2013 Karthik. All rights reserved.
//

#import "demodelegateViewController.h"

#import "SecondViewController.h"

@implementation demodelegateViewController

@synthesize resultLabel=_resultLabel;

- (IBAction)gotosecondcontroller:(id)sender {
    SecondViewController *sc=[[SecondViewController alloc]initWithNibName:@"SecondViewController" bundle:nil];
    sc.delegate=self;
    UINavigationController *nc=[[UINavigationController alloc]initWithRootViewController:sc];
    [self presentViewController:nc animated:YES completion:nil];
    
    
    
}
-(void)sum:(int)val secondparam:(int)val2{
    int a;
    a=val+val2;
    _resultLabel.text=[NSString stringWithFormat:@"%d",a];
}

-(void)mul:(int)x secondvalue:(int)y{
    int a;
    a=x*y;
    _resultLabel.text=[NSString stringWithFormat:@"%d",a];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
