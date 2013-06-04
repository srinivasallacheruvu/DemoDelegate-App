//
//  demodelegateViewController.h
//  DemoDelegateApp
//
//  Created by Karthik on 04/06/13.
//  Copyright (c) 2013 Karthik. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
@interface demodelegateViewController : UIViewController<SecondViewControllerDelegte,UITextFieldDelegate>
{
    IBOutlet UILabel *resultLabel;
}
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
- (IBAction)gotosecondcontroller:(id)sender;

@end
