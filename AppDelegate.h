//
//  AppDelegate.h
//  Showcase JCCC
//
//  Created by Sam on 4/16/15.
//  Copyright (c) 2015 BFG-BetterFamilyGaming. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : NSObject <UIApplicationDelegate>


@property (nonatomic, strong) IBOutlet UIWindow *window;
@property (nonatomic, strong) IBOutlet ViewController *viewController;

@end
