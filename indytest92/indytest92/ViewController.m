//
//  ViewController.m
//  indytest92
//
//  Created by Stanley Chen on 6/16/18.
//  Copyright © 2018 Stanley Chen. All rights reserved.
//

#import "ViewController.h"

#import <Indy/Indy.h>

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


- (IBAction)generateDIDButtonPressed:(UIButton *)sender {
    
    // create wallet if not exist
    @try{
    [[IndyWallet sharedInstance] createWalletWithName: @"wallet2" poolName:@"pool" type:@"default" config:@"{}" credentials: nil completion:^(NSError *error) {
        NSLog(@"%@", [error localizedDescription]);
    }];
    }
    @catch (NSException *exception) {
        // error happened! do something about the error state
    }
    
    __block IndyHandle walletHandle = 0;
    __block NSError *err = nil;
    __block NSString *did = nil;
    __block NSString *verKey = nil;
    
    [[IndyWallet sharedInstance] openWalletWithName:@"wallet2" runtimeConfig:nil credentials:nil completion:^(NSError *error, IndyHandle handle) {
        NSLog(@"%@", [error localizedDescription]);
        
        
        [IndyDid createAndStoreMyDid:@"{}"
                        walletHandle:handle
                          completion:^(NSError *error, NSString *blockDid, NSString *blockVerKey) {
                              
                              NSLog(@"%@", [error localizedDescription]);
                              err = error;
                              did = blockDid;
                              verKey = blockVerKey;
                              
                              NSLog(@"blockDid is %@", blockDid);
                              NSLog(@"verKey is %@", blockVerKey);
                              self.DIDTextField.text = did;
                              self.VerKeyTextView.text = verKey;
                          }];
        NSLog(@"did is %@", did);
        
        walletHandle = handle;
        
        [[IndyWallet sharedInstance] closeWalletWithHandle:handle completion:^(NSError *error) {
            NSLog(@"%@", [error localizedDescription]);
        }];
    }];
    
    NSLog(@"WalletHandle is %ld", (long)walletHandle);
    
 }
    

@end
