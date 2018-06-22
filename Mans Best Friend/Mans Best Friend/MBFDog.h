//
//  MBFDog.h
//  Mans Best Friend
//
//  Created by Stanley Chen on 6/21/18.
//  Copyright © 2018 Stanley Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface MBFDog : NSObject

@property (nonatomic) int age;
@property (nonatomic, strong) NSString *breed;
@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSString *name;

-(void) bark;
-(void) barkNumberOfTimes: (int)numberOfTimes;

@end
