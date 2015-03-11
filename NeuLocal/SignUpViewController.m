//
//  SignUpViewController.m
//  NeuLocal
//
//  Created by Ajay Bhardwaj on 11/3/15.
//  Copyright (c) 2015 Nexgen. All rights reserved.
//

#import "SignUpViewController.h"

@interface SignUpViewController ()

@end

@implementation SignUpViewController




//*************** Method For Submiting Login Parameters

- (void) submitSignUpParameters {
    
}


//*************** Method For Validating Login Parameters

- (void) validateSignUPParameters {
    
    [nameField resignFirstResponder];
    [emailField resignFirstResponder];
    [mobileField resignFirstResponder];
    [passwordField resignFirstResponder];
    [confirmPasswordField resignFirstResponder];
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.5];
    
    CGPoint pos = self.view.center;
    pos.y = 240;
    self.view.center = pos;
    
    [UIView commitAnimations];
    
    if ([nameField.text length]==0) {
        [CommonFunctions showAlertView:nil title:@"Sorry!" msg:@"Name is mandatory." cancel:@"OK" otherButton:nil];
    }
    else if ([CommonFunctions characterSet1Found:nameField.text]) {
        [CommonFunctions showAlertView:nil title:@"Sorry!" msg:@"Please provide a valid name." cancel:@"OK" otherButton:nil];
    }
    else if ([emailField.text length]==0) {
        [CommonFunctions showAlertView:nil title:@"Sorry!" msg:@"Email is mandatory." cancel:@"OK" otherButton:nil];
    }
    else if (![CommonFunctions NSStringIsValidEmail:emailField.text]) {
        [CommonFunctions showAlertView:nil title:@"Sorry!" msg:@"Please provide a valid email." cancel:@"OK" otherButton:nil];
    }
    else if ([passwordField.text length]==0) {
        [CommonFunctions showAlertView:nil title:@"Sorry!" msg:@"Password is mandatory." cancel:@"OK" otherButton:nil];
    }
    else if ([confirmPasswordField.text length]==0) {
        [CommonFunctions showAlertView:nil title:@"Sorry!" msg:@"Retype password is mandatory." cancel:@"OK" otherButton:nil];
    }
    else if (![passwordField.text isEqualToString:confirmPasswordField.text]) {
        [CommonFunctions showAlertView:nil title:@"Sorry!" msg:@"Password & retype password does not match." cancel:@"OK" otherButton:nil];
    }
    else {
        [self submitSignUpParameters];
    }
}


# pragma mark - UITextFieldDelegate Methods

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if (textField==nameField) {
        [nameField resignFirstResponder];
        [emailField becomeFirstResponder];
    }
    else if (textField==emailField) {
        [emailField resignFirstResponder];
        [mobileField becomeFirstResponder];
    }
    else if (textField==mobileField) {
        [mobileField resignFirstResponder];
        [passwordField becomeFirstResponder];
    }
    else if (textField==passwordField) {
        [passwordField resignFirstResponder];
        [confirmPasswordField becomeFirstResponder];
    }
    else if (textField==confirmPasswordField) {
        [confirmPasswordField resignFirstResponder];
        
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:0.5];
        
        CGPoint pos = self.view.center;
        pos.y = 240;
        self.view.center = pos;
        
        [UIView commitAnimations];
    }
    
    return YES;
}


- (void)textFieldDidBeginEditing:(UITextField *)textField {
    
    if (textField==passwordField || textField==confirmPasswordField) {
        
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:0.5];
        
        CGPoint pos = self.view.center;
        pos.y = 120;
        self.view.center = pos;
        
        [UIView commitAnimations];
    }
    else {
        
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:0.5];
        
        CGPoint pos = self.view.center;
        pos.y = 240;
        self.view.center = pos;
        
        [UIView commitAnimations];
    }
}


# pragma mark - View Lifecycle Methods

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = RGB(245, 240, 236);
    
    nameField = [[UITextField alloc] initWithFrame:CGRectMake(20, 50, self.view.bounds.size.width-40, 40)];
    nameField.textColor = RGB(35, 35, 35);
    nameField.font = [UIFont fontWithName:ROBOTO_REGULAR size:15.0];
    nameField.leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 20)];
    nameField.leftViewMode = UITextFieldViewModeAlways;
    nameField.borderStyle = UITextBorderStyleNone;
    nameField.textAlignment=NSTextAlignmentLeft;
    [nameField setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];
    nameField.placeholder=@"Name *";
    [self.view addSubview:nameField];
    nameField.clearButtonMode = UITextFieldViewModeWhileEditing;
    nameField.delegate = self;
    nameField.backgroundColor = [UIColor clearColor];
    nameField.returnKeyType = UIReturnKeyNext;
    [nameField setValue:RGB(223, 70, 0) forKeyPath:@"_placeholderLabel.textColor"];
    
    CALayer *nameFieldBottomBorder = [CALayer layer];
    nameFieldBottomBorder.frame = CGRectMake(0.0f, nameField.frame.size.height - 1, nameField.frame.size.width, 1.0f);
    nameFieldBottomBorder.backgroundColor = RGB(223, 70, 0).CGColor;
    [nameField.layer addSublayer:nameFieldBottomBorder];
    
    
    emailField = [[UITextField alloc] initWithFrame:CGRectMake(20, nameField.frame.origin.y+nameField.bounds.size.height+10, self.view.bounds.size.width-40, 40)];
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
    
    
    mobileField = [[UITextField alloc] initWithFrame:CGRectMake(20, emailField.frame.origin.y+emailField.bounds.size.height+10, self.view.bounds.size.width-40, 40)];
    mobileField.textColor = RGB(35, 35, 35);
    mobileField.font = [UIFont fontWithName:ROBOTO_REGULAR size:15.0];
    mobileField.leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 20)];
    mobileField.leftViewMode = UITextFieldViewModeAlways;
    mobileField.borderStyle = UITextBorderStyleNone;
    mobileField.textAlignment=NSTextAlignmentLeft;
    [mobileField setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];
    mobileField.placeholder=@"Mobile *";
    [self.view addSubview:mobileField];
    mobileField.clearButtonMode = UITextFieldViewModeWhileEditing;
    mobileField.delegate = self;
    mobileField.backgroundColor = [UIColor clearColor];
    mobileField.returnKeyType = UIReturnKeyNext;
    [mobileField setValue:RGB(223, 70, 0) forKeyPath:@"_placeholderLabel.textColor"];
    
    CALayer *mobileFieldBottomBorder = [CALayer layer];
    mobileFieldBottomBorder.frame = CGRectMake(0.0f, emailField.frame.size.height - 1, emailField.frame.size.width, 1.0f);
    mobileFieldBottomBorder.backgroundColor = RGB(223, 70, 0).CGColor;
    [mobileField.layer addSublayer:mobileFieldBottomBorder];
    
    
    passwordField = [[UITextField alloc] initWithFrame:CGRectMake(20, mobileField.frame.origin.y+mobileField.bounds.size.height+10, self.view.bounds.size.width-40, 40)];
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
    passwordField.returnKeyType = UIReturnKeyNext;
    [passwordField setValue:RGB(223, 70, 0) forKeyPath:@"_placeholderLabel.textColor"];
    
    CALayer *passFieldBottomBorder = [CALayer layer];
    passFieldBottomBorder.frame = CGRectMake(0.0f, passwordField.frame.size.height - 1, passwordField.frame.size.width, 1.0f);
    passFieldBottomBorder.backgroundColor = RGB(223, 70, 0).CGColor;
    [passwordField.layer addSublayer:passFieldBottomBorder];
    
    
    confirmPasswordField = [[UITextField alloc] initWithFrame:CGRectMake(20, passwordField.frame.origin.y+passwordField.bounds.size.height+10, self.view.bounds.size.width-40, 40)];
    confirmPasswordField.textColor = RGB(35, 35, 35);
    confirmPasswordField.font = [UIFont fontWithName:ROBOTO_REGULAR size:15.0];
    confirmPasswordField.leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 20)];
    confirmPasswordField.leftViewMode = UITextFieldViewModeAlways;
    confirmPasswordField.borderStyle = UITextBorderStyleNone;
    confirmPasswordField.textAlignment=NSTextAlignmentLeft;
    [confirmPasswordField setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];
    confirmPasswordField.secureTextEntry = YES;
    confirmPasswordField.placeholder=@"Confirm Password *";
    [self.view addSubview:confirmPasswordField];
    confirmPasswordField.clearButtonMode = UITextFieldViewModeWhileEditing;
    confirmPasswordField.delegate = self;
    confirmPasswordField.backgroundColor = [UIColor clearColor];
    confirmPasswordField.returnKeyType = UIReturnKeyDone;
    [confirmPasswordField setValue:RGB(223, 70, 0) forKeyPath:@"_placeholderLabel.textColor"];
    
    CALayer *confirmPassFieldBottomBorder = [CALayer layer];
    confirmPassFieldBottomBorder.frame = CGRectMake(0.0f, confirmPasswordField.frame.size.height - 1, confirmPasswordField.frame.size.width, 1.0f);
    confirmPassFieldBottomBorder.backgroundColor = RGB(223, 70, 0).CGColor;
    [confirmPasswordField.layer addSublayer:confirmPassFieldBottomBorder];
    
    registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [registerButton setTitle:@"SIGN UP" forState:UIControlStateNormal];
    [registerButton setTitleColor:RGB(223, 70, 0) forState:UIControlStateNormal];
    registerButton.titleLabel.font = [UIFont fontWithName:ROBOTO_BOLD size:15];
    registerButton.frame = CGRectMake(0, confirmPasswordField.frame.origin.y+confirmPasswordField.bounds.size.height+30, self.view.bounds.size.width, 45);
    [registerButton setBackgroundColor:[UIColor whiteColor]];
    [registerButton addTarget:self action:@selector(validateSignUPParameters) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:registerButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
