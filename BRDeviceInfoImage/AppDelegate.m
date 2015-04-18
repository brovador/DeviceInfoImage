//
//  AppDelegate.m
//  BRDeviceInfoImage
//
//  Created by Jesús on 18/4/15.
//  Copyright (c) 2015 Jesús. All rights reserved.
//

#import "AppDelegate.h"
#import "DIIRootViewController.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    DIIRootViewController *vc = [DIIRootViewController new];
    window.rootViewController = vc;
    [window makeKeyAndVisible];
    self.window = window;
    
    return YES;
}

@end
