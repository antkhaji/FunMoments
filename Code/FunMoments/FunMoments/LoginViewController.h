//
//  LoginViewController.h
//  EventsInformer
//
//  Created by AnthonyB on 22/09/2016.
//  Copyright © 2016 anto. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>
@interface LoginViewController : UIViewController
<FBSDKLoginButtonDelegate>


@property (weak, nonatomic) IBOutlet FBSDKLoginButton *facebookLogin;
@property (weak, nonatomic) IBOutlet UILabel *lblLoginStatus;
@property (weak, nonatomic) IBOutlet UILabel *lblUsername;
@property (weak, nonatomic) IBOutlet UILabel *lblEmail;
@property (weak, nonatomic) IBOutlet FBSDKProfilePictureView *profilePicture;
@property (weak, nonatomic) IBOutlet UIButton *proceedButton;

- (IBAction)saveButtonTouched:(id)sender;
@end
