//
//  LYXViewController.m
//  LYXimalayaSDK
//
//  Created by ButtFly on 12/05/2018.
//  Copyright (c) 2018 ButtFly. All rights reserved.
//

#import "LYXViewController.h"
#import <LYXimalayaSDK/LYXimalayaSDK.h>

@interface LYXViewController ()

@end

@implementation LYXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [[XMReqMgr sharedInstance] registerXMReqInfoWithKey:@"f2d0dc6eeef0b8412f6eb0d57a1a03b2" appSecret:@"2a64faf9cc4d75f3bb4609026303aef7"];
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    [params setObject:@2 forKey:@"category_id"];
    [params setObject:@20 forKey:@"count"];
    [params setObject:@1 forKey:@"page"];
    [params setObject:@3 forKey:@"calc_dimension"];
    [[XMReqMgr sharedInstance] requestXMData:XMReqType_AlbumsList params:params withCompletionHander:^(id result, XMErrorModel *error) {
        
        NSLog(@"%@", result);
        
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
