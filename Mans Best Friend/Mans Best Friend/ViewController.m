//
//  ViewController.m
//  Mans Best Friend
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
    MBFDog *myDog = [[MBFDog alloc] init]; // method call. MBF alloc first, then init
    
    myDog.name = @"Nana";
    myDog.breed = @"St. Bernard";
    myDog.age = 1;
    
    NSLog(@"My dog is name %@ and its age is %i and the breed is %@", myDog.name, myDog.age, myDog.breed);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
