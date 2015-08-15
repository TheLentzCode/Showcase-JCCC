//
//  AppDelegate.m
//  Showcase JCCC
//
//  Created by Sam on 4/16/15.
//  Copyright (c) 2015 BFG-BetterFamilyGaming. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@implementation AppDelegate

@synthesize window;
@synthesize viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
    return YES;
}


@end
