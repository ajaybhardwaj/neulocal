//
//  ViewController.m
//  NeuLocal
//
//  Created by Ajay Bhardwaj on 11/3/15.
//  Copyright (c) 2015 Nexgen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



//*************** Method To Handle Login Flow

- (void) handleLoginFunction:(id) sender {
    
    UIButton *button = (id) sender;
    
    if (button.tag==1) {
        LoginViewController *viewObj = [[LoginViewController alloc] init];
        [self.navigationController pushViewController:viewObj animated:YES];
    }
    else if (button.tag==2) {
        
    }
    else if (button.tag==3) {
        
    }
    else if (button.tag==4) {
        SignUpViewController *viewObj = [[SignUpViewController alloc] init];
        [self.navigationController pushViewController:viewObj animated:YES];
    }
}


# pragma mark - View Lifecycle Methods

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Temp Backgroundcolor Only
    self.view.backgroundColor = [UIColor colorWithRed:194.0/256.0 green:77.0/256.0 blue:10.0/256.0 alpha:1.0];
    
    signupButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [signupButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    signupButton.titleLabel.font = [UIFont fontWithName:ROBOTO_BOLD size:13.0];
    signupButton.frame = CGRectMake(0, self.view.bounds.size.height-50, self.view.bounds.size.width, 40);
    [signupButton setTitle:@"Don't Have An Account" forState:UIControlStateNormal];
    [signupButton addTarget:self action:@selector(handleLoginFunction:) forControlEvents:UIControlEventTouchUpInside];
    signupButton.tag = 4;
    [self.view addSubview:signupButton];
    
    
    emailLoginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [emailLoginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [emailLoginButton setBackgroundColor:RGB(218, 95, 23)];
    emailLoginButton.titleLabel.font = [UIFont fontWithName:ROBOTO_BOLD size:15.0];
    emailLoginButton.frame = CGRectMake(0, signupButton.frame.origin.y - 80, self.view.bounds.size.width, 50);
    [emailLoginButton setTitle:@"SIGN IN WITH EMAIL" forState:UIControlStateNormal];
    emailLoginButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    emailLoginButton.contentEdgeInsets = UIEdgeInsetsMake(0, 80, 0, 0);
    [emailLoginButton addTarget:self action:@selector(handleLoginFunction:) forControlEvents:UIControlEventTouchUpInside];
    emailLoginButton.tag = 1;
    [self.view addSubview:emailLoginButton];
    
    twitterLoginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [twitterLoginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [twitterLoginButton setBackgroundColor:RGB(218, 95, 23)];
    twitterLoginButton.titleLabel.font = [UIFont fontWithName:ROBOTO_BOLD size:15.0];
    twitterLoginButton.frame = CGRectMake(0, emailLoginButton.frame.origin.y - 70, self.view.bounds.size.width, 50);
    [twitterLoginButton setTitle:@"SIGN IN WITH TWITTER" forState:UIControlStateNormal];
    twitterLoginButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    twitterLoginButton.contentEdgeInsets = UIEdgeInsetsMake(0, 80, 0, 0);
    [twitterLoginButton addTarget:self action:@selector(handleLoginFunction:) forControlEvents:UIControlEventTouchUpInside];
    twitterLoginButton.tag = 2;
    [self.view addSubview:twitterLoginButton];
    
    facebookLoginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [facebookLoginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [facebookLoginButton setBackgroundColor:RGB(218, 95, 23)];
    facebookLoginButton.titleLabel.font = [UIFont fontWithName:ROBOTO_BOLD size:15.0];
    facebookLoginButton.frame = CGRectMake(0, twitterLoginButton.frame.origin.y - 70, self.view.bounds.size.width, 50);
    [facebookLoginButton setTitle:@"SIGN IN WITH FACEBOOK" forState:UIControlStateNormal];
    facebookLoginButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    facebookLoginButton.contentEdgeInsets = UIEdgeInsetsMake(0, 80, 0, 0);
    [facebookLoginButton addTarget:self action:@selector(handleLoginFunction:) forControlEvents:UIControlEventTouchUpInside];
    facebookLoginButton.tag = 3;
    [self.view addSubview:facebookLoginButton];
}


- (void) viewWillAppear:(BOOL)animated {
    
    self.navigationController.navigationBar.hidden = YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
