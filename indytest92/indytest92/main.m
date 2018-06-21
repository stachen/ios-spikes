//
//  main.m
//  indytest92
//
//  Created by Stanley Chen on 6/16/18.
//  Copyright © 2018 Stanley Chen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <Indy/Indy.h>

int main(int argc, char * argv[]) {
    
    
    [[IndyWallet sharedInstance] createWalletWithName: @"wallet2" poolName:@"pool" type:@"default" config:@"{}" credentials: nil completion:^(NSError *error) {
        NSLog(@"%@", [error localizedDescription]);
   }];
    
    __block IndyHandle walletHandle = 0;
    [[IndyWallet sharedInstance] openWalletWithName:@"wallet2" runtimeConfig:nil credentials:nil completion:^(NSError *error, IndyHandle handle) {
        NSLog(@"%@", [error localizedDescription]);
        
        NSLog(@"Handle is %ld", (long)handle);
        
        __block NSError *err = nil;
        __block NSString *did = nil;
        __block NSString *verKey = nil;
        [IndyDid createAndStoreMyDid:@"{}"
                        walletHandle:handle
                          completion:^(NSError *error, NSString *blockDid, NSString *blockVerKey) {
                              
                                NSLog(@"%@", [error localizedDescription]);
                              err = error;
                              did = blockDid;
                              verKey = blockVerKey;
                              
                              NSLog(@"blockDid is %@", blockDid);
                              NSLog(@"verKey is %@", blockVerKey);
                          }];
        NSLog(@"did is %@", did);

        walletHandle = handle;
    }];
    
    NSLog(@"WalletHandle is %ld", (long)walletHandle);
    

    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
    
    
    
}

