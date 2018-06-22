//
//  AppDelegate.h
//  Mans Best Friend
//
//  Created by Stanley Chen on 6/21/18.
//  Copyright © 2018 Stanley Chen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

