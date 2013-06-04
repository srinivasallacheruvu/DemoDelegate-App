//
//  SecondViewController.h
//  DemoDelegateApp
//
//  Created by Karthik on 04/06/13.
//  Copyright (c) 2013 Karthik. All rights reserved.
//

#import <UIKit/UIKit.h>

// protocol definition

@protocol SecondViewControllerDelegte 

-(void) sum :(int) val secondparam:(int) val2;
@optional
-(void) mul:(int) x secondvalue:(int) y;

@end

@interface SecondViewController : UIViewController{
    id<SecondViewControllerDelegte> delegate;
    
}
@property (weak, nonatomic) IBOutlet UITextField *firstTextField;
@property (weak, nonatomic) IBOutlet UITextField *secondTextField;

@property (retain,nonatomic)id<SecondViewControllerDelegte> delegate;

- (IBAction)Add:(id)sender;
- (IBAction)Mul:(id)sender;
-(IBAction)goawayKeyboard:(id)sender;
-(IBAction)backgroudTap:(id)sender;


@end
