//
//  ProfileViewController.m
//  InstaPhoto
//
//  Created by Bruno Bonamin on 28/12/12.
//  Copyright (c) 2012 Bruno Bonamin. All rights reserved.
//

#import "ProfileViewController.h"
#include "UIImageView+AFNetworking.h"
#include "AFJSONRequestOperation.h"

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
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];

    self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    self.scrollView.contentSize = CGSizeMake(320, 810);
    self.scrollView.backgroundColor = [UIColor greenColor];
    
    self.view.backgroundColor = [UIColor yellowColor];
        
    NSURL *url = [[NSURL alloc] initWithString: @"https://api.github.com/users/bbonamin"];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    AFJSONRequestOperation *operation = [AFJSONRequestOperation
                                         JSONRequestOperationWithRequest:request
                                                                 success:^(NSURLRequest *request,NSHTTPURLResponse *response, id JSON){
                                                                     self.userGithubProfile = JSON;
                                                                     [self requestSuccessful];
                                                                 }failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON){
                                                                            NSLog(@"NSError: %@", error.localizedDescription);
                                                                 }];
    [operation start];

    [self.view addSubview:self.scrollView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) showZoomedImage:(UIButton *) sender
{
    NSLog(@"Showing zoomed image!");
    UIViewController *zoomedImageVC = [[UIViewController alloc] init];
    zoomedImageVC.view.frame = self.view.frame;
    zoomedImageVC.title = @"Profile picture";
    
    UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bruno.jpg" ]];
    [image setContentMode:UIViewContentModeScaleAspectFit];
    image.frame = zoomedImageVC.view.frame;
    [zoomedImageVC.view addSubview:image];
    [self.navigationController pushViewController:zoomedImageVC animated:YES];
}
- (void) requestSuccessful {
//    NSLog(@"%@", self.userGithubProfile);
    UIImageView *brunoView = [[UIImageView alloc] init];
    [brunoView setImageWithURL: [NSURL URLWithString:self.userGithubProfile[@"avatar_url"] ]
              placeholderImage:[UIImage imageNamed:@"bruno.jpg"]];
    brunoView.frame = CGRectMake(160, 10, 140, 100 );
    [self.scrollView addSubview:brunoView];
    
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 110, 200, 40)];
    nameLabel.text = self.userGithubProfile[@"name"];
    nameLabel.backgroundColor = [UIColor clearColor];
    [self.scrollView addSubview:nameLabel];
    
    UILabel *fromLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 160, 200, 40)];
    fromLabel.text = [NSString stringWithFormat:@"From: %@", self.userGithubProfile[@"location"]];
    fromLabel.backgroundColor = [UIColor clearColor];
    [self.scrollView addSubview:fromLabel];
    
    UITextView *biography = [[UITextView alloc] initWithFrame:CGRectMake(10, 210, 300, 600)];
    biography.font = [UIFont fontWithName:@"Helvetica" size:15];
    biography.editable = NO;
    biography.text = self.userGithubProfile[@"bio"];
    [self.scrollView addSubview:biography];
}
@end
