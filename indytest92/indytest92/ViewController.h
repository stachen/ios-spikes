//
//  ViewController.h
//  indytest92
//
//  Created by Stanley Chen on 6/16/18.
//  Copyright © 2018 Stanley Chen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)generateDIDButtonPressed:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UITextField *DIDTextField;
@property (strong, nonatomic) IBOutlet UITextView *VerKeyTextView;

@end

