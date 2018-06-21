//
//  ViewController.m
//  MyFristApplication
//
//  Created by Stanley Chen on 6/21/18.
//  Copyright © 2018 Stanley Chen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonPressed:(UIButton *)sender {
    self.titleLabel.text = @"Changed";
    
    [self.textField resignFirstResponder ];
}
@end
