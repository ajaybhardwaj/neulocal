//
//  AppDelegate.h
//  NeuLocal
//
//  Created by Ajay Bhardwaj on 11/3/15.
//  Copyright (c) 2015 Nexgen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Constants.h"
#import "ViewController.h"

@class ViewController;
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) UINavigationController *navc;
@property (nonatomic, retain) ViewController *homeViewController;

@end

