//
//  LoginViewController.h
//  NeuLocal
//
//  Created by Ajay Bhardwaj on 11/3/15.
//  Copyright (c) 2015 Nexgen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "CommonFunctions.h"

@interface LoginViewController : UIViewController <UITextFieldDelegate> {
    
    UITextField *emailField,*passwordField;
    UIButton *loginButton,*forgotPasswordbutton;
}

@end
