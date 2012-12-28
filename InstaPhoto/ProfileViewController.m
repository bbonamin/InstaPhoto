//
//  ProfileViewController.m
//  InstaPhoto
//
//  Created by Bruno Bonamin on 28/12/12.
//  Copyright (c) 2012 Bruno Bonamin. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Profile";
        self.tabBarItem.image = [UIImage imageNamed:@"19-gear"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    UIImageView *brunoView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bruno.jpg"]];
    [brunoView setContentMode:UIViewContentModeScaleAspectFit];
    brunoView.frame = self.view.frame;
    [self.view addSubview:brunoView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
