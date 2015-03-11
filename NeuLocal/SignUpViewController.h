//
//  SignUpViewController.h
//  NeuLocal
//
//  Created by Ajay Bhardwaj on 11/3/15.
//  Copyright (c) 2015 Nexgen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Constants.h"
#import "CommonFunctions.h"

@interface SignUpViewController : UIViewController <UITextFieldDelegate> {
    
    UITextField *nameField,*emailField,*mobileField,*passwordField,*confirmPasswordField;
    UIButton *registerButton;
}

@end
