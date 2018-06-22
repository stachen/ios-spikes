//
//  MBFDog.m
//  Mans Best Friend
//
//  Created by Stanley Chen on 6/21/18.
//  Copyright © 2018 Stanley Chen. All rights reserved.
//

#import "MBFDog.h"

@implementation MBFDog

-(void) bark
{
    NSLog(@"Woof woof!");
}

-(void) barkNumberOfTimes:(int)numberOfTimes
{
    for(int bark = 1; bark <= numberOfTimes; bark++)
    {
        [self bark];
    }
}

@end
