//
//  LoginViewController.m
//  NeuLocal
//
//  Created by Ajay Bhardwaj on 11/3/15.
//  Copyright (c) 2015 Nexgen. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController




//*************** Method For Submiting Login Parameters

- (void) submitLoginParameters {
    
}


//*************** Method For Validating Login Parameters

- (void) validateLoginParameters {
    
    if ([emailField.text length]==0) {
        [CommonFunctions showAlertView:nil title:@"Sorry!" msg:@"Email is mandatory." cancel:@"OK" otherButton:nil];
    }
    else if (![CommonFunctions NSStringIsValidEmail:emailField.text]) {
        [CommonFunctions showAlertView:nil title:@"Sorry!" msg:@"Please provide a valid email." cancel:@"OK" otherButton:nil];
    }
    else if ([passwordField.text length]==0) {
        [CommonFunctions showAlertView:nil title:@"Sorry!" msg:@"Password is mandatory." cancel:@"OK" otherButton:nil];
    }
    else {
        [self submitLoginParameters];
    }
}


# pragma mark - UITextFieldDelegate Methods

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if (textField==emailField) {
        [emailField resignFirstResponder];
        [passwordField becomeFirstResponder];
    }
    else if (textField==passwordField) {
        [passwordField resignFirstResponder];
    }
    
    return YES;
}


# pragma mark - View Lifecycle Methods

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = RGB(245, 240, 236);
    
    emailField = [[UITextField alloc] initWithFrame:CGRectMake(20, 50, self.view.bounds.size.width-40, 40)];
    emailField.textColor = RGB(35, 35, 35);
    emailField.font = [UIFont fontWithName:ROBOTO_REGULAR size:15.0];
    emailField.leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 20)];
    emailField.leftViewMode = UITextFieldViewModeAlways;
    emailField.borderStyle = UITextBorderStyleNone;
    emailField.textAlignment=NSTextAlignmentLeft;
    [emailField setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];
    emailField.placeholder=@"Email *";
    [self.view addSubview:emailField];
    emailField.clearButtonMode = UITextFieldViewModeWhileEditing;
    emailField.delegate = self;
    emailField.keyboardType = UIKeyboardTypeEmailAddress;
    emailField.backgroundColor = [UIColor clearColor];
    emailField.returnKeyType = UIReturnKeyNext;
    [emailField setValue:RGB(223, 70, 0) forKeyPath:@"_placeholderLabel.textColor"];
    
    CALayer *emailFieldBottomBorder = [CALayer layer];
    emailFieldBottomBorder.frame = CGRectMake(0.0f, emailField.frame.size.height - 1, emailField.frame.size.width, 1.0f);
    emailFieldBottomBorder.backgroundColor = RGB(223, 70, 0).CGColor;
    [emailField.layer addSublayer:emailFieldBottomBorder];
    
    passwordField = [[UITextField alloc] initWithFrame:CGRectMake(20, emailField.frame.origin.y+emailField.bounds.size.height+20, self.view.bounds.size.width-40, 40)];
    passwordField.textColor = RGB(35, 35, 35);
    passwordField.font = [UIFont fontWithName:ROBOTO_REGULAR size:15.0];
    passwordField.leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 20)];
    passwordField.leftViewMode = UITextFieldViewModeAlways;
    passwordField.borderStyle = UITextBorderStyleNone;
    passwordField.textAlignment=NSTextAlignmentLeft;
    [passwordField setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];
    passwordField.secureTextEntry = YES;
    passwordField.placeholder=@"Password *";
    [self.view addSubview:passwordField];
    passwordField.clearButtonMode = UITextFieldViewModeWhileEditing;
    passwordField.delegate = self;
    passwordField.backgroundColor = [UIColor clearColor];
    passwordField.returnKeyType = UIReturnKeyDone;
    [passwordField setValue:RGB(223, 70, 0) forKeyPath:@"_placeholderLabel.textColor"];
    
    CALayer *passFieldBottomBorder = [CALayer layer];
    passFieldBottomBorder.frame = CGRectMake(0.0f, passwordField.frame.size.height - 1, passwordField.frame.size.width, 1.0f);
    passFieldBottomBorder.backgroundColor = RGB(223, 70, 0).CGColor;
    [passwordField.layer addSublayer:passFieldBottomBorder];
    
    loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [loginButton setTitle:@"SIGN IN" forState:UIControlStateNormal];
    [loginButton setTitleColor:RGB(223, 70, 0) forState:UIControlStateNormal];
    loginButton.titleLabel.font = [UIFont fontWithName:ROBOTO_BOLD size:15];
    loginButton.frame = CGRectMake(0, passwordField.frame.origin.y+passwordField.bounds.size.height+30, self.view.bounds.size.width, 45);
    [loginButton setBackgroundColor:[UIColor whiteColor]];
    [loginButton addTarget:self action:nil forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginButton];
    
    forgotPasswordbutton = [UIButton buttonWithType:UIButtonTypeCustom];
    [forgotPasswordbutton setTitle:@"FORGOT USERNAME OR PASSWORD" forState:UIControlStateNormal];
    [forgotPasswordbutton setTitleColor:RGB(223, 70, 0) forState:UIControlStateNormal];
    forgotPasswordbutton.titleLabel.font = [UIFont fontWithName:ROBOTO_MEDIUM size:13];
    forgotPasswordbutton.frame = CGRectMake(0, loginButton.frame.origin.y+loginButton.bounds.size.height+20, self.view.bounds.size.width, 20);
    [forgotPasswordbutton setBackgroundColor:[UIColor clearColor]];
    [forgotPasswordbutton addTarget:self action:nil forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:forgotPasswordbutton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewWillAppear:(BOOL)animated {
    
    self.navigationController.navigationBar.hidden = YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
