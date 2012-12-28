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
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];

    self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    self.scrollView.contentSize = CGSizeMake(320, 810);
    self.scrollView.backgroundColor = [UIColor greenColor];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIImageView *brunoView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bruno.jpg"]];
    brunoView.frame = CGRectMake(160, 10, 140, 100 );
    [self.scrollView addSubview:brunoView];
    
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 110, 200, 40)];
    nameLabel.text = @"StarFleet Commander";
    nameLabel.backgroundColor = [UIColor clearColor];
    [self.scrollView addSubview:nameLabel];

    UILabel *fromLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 160, 200, 40)];
    fromLabel.text = @"From: Beyond the stars";
    fromLabel.backgroundColor = [UIColor clearColor];
    [self.scrollView addSubview:fromLabel];
    
    UITextView *biography = [[UITextView alloc] initWithFrame:CGRectMake(10, 210, 300, 600)];
    biography.font = [UIFont fontWithName:@"Helvetica" size:15];
    biography.editable = NO;
    biography.text = @"You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I don't know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that I'm breaking now. We said we'd say it was the snow that killed the other two, but it wasn't. Nature is lethal but it doesn't hold a candle to man.";
    [self.scrollView addSubview:biography];

    [self.view addSubview:self.scrollView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
