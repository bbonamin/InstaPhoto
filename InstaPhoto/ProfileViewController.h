//
//  ProfileViewController.h
//  InstaPhoto
//
//  Created by Bruno Bonamin on 28/12/12.
//  Copyright (c) 2012 Bruno Bonamin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfileViewController : UIViewController

@property (strong, nonatomic) UIScrollView *scrollView;
@property (strong,nonatomic) NSDictionary *userGithubProfile;

- (void) showZoomedImage:(UIButton *) sender;
- (void) requestSuccessful;
@end
