//
//  SignInViewController.m
//  AddLockers
//
//  Created by Andrew Bennie on 6/25/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import "SignInViewController.h"


@interface SignInViewController ()

@end

@implementation SignInViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.enterPasswordTextField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBActions

- (IBAction)loginButtonPressed:(UIButton *)sender {
    
    /* access the saved information in NSUserDefaults in this case access our saved password. */
    NSUserDefaults *standardUserDefaults = [NSUserDefaults standardUserDefaults];
    NSString *savedPassword = [standardUserDefaults objectForKey:@"password"];
    
    /* use an if statement to test if our savedpassword is equal to the password that was entered into the textField. If they are the same go to the passwordFeed*/
    if ([savedPassword isEqualToString:self.enterPasswordTextField.text]) {
        PasswordFeedViewController *passwordFeedViewController = [[PasswordFeedViewController alloc] initWithNibName:nil bundle:nil];
        [self.navigationController pushViewController:passwordFeedViewController animated:YES];
    }
    else {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Incorrect Password" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles: nil];
        [alertView show];
    }
}

//If the create account button is pressed take the user to the createAccountButtonPressed page.
- (IBAction)createAccountButtonPressed:(UIButton *)sender {
    
    CreateAccountViewController *createAccountViewController = [[CreateAccountViewController alloc] initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:createAccountViewController animated:YES];
}


#pragma mark - TextFieldDelegate

//implement the textField Delegate method
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self.enterPasswordTextField resignFirstResponder];
    return YES;
}

- (IBAction)enterPasswordTextField:(id)sender {
}
@end

