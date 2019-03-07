//
//  LYXAppDelegate.m
//  LYXimalayaSDK
//
//  Created by ButtFly on 12/05/2018.
//  Copyright (c) 2018 ButtFly. All rights reserved.
//

#import "LYXAppDelegate.h"
#import <LYXimalayaSDK/LYXimalayaSDK.h>

@interface LYXAppDelegate () <XMLYAuthorizeDelegate>

@end

@implementation LYXAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    [[XMLYAuthorize shareInstance] initWithAppkey:@"f2d0dc6eeef0b8412f6eb0d57a1a03b2" appSecret:@"2a64faf9cc4d75f3bb4609026303aef7" appRedirectUri:nil appPackageId:@"cn.buttfly.LYMusicPlayer" appName:@"喜马拉雅测试" delegate:self];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void)onAuthorizeFail:(XmlyResponseType)errorType errorInfo:(NSDictionary *)info {
    
}

- (void)onRequestQRCodeFail:(XmlyResponseType)errorType errorInfo:(NSDictionary *)info {
    
}

- (void)onAuthorizeSuccess:(XmlyResponseType)responseType responseData:(XMLYAuthorizeModel *)authorizeModel {
    
}

- (void)onRequestQRCodeSuccess:(XmlyResponseType)responseType responseData:(NSData *)imageData {
    
}

@end
