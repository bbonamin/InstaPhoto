//
//  FeedViewController.m
//  InstaPhoto
//
//  Created by Bruno Bonamin on 28/12/12.
//  Copyright (c) 2012 Bruno Bonamin. All rights reserved.
//

#import "FeedViewController.h"
#import "ProfileViewController.h"
    
@interface FeedViewController ()

@end

@implementation FeedViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Feed";
        self.tabBarItem.image = [UIImage imageNamed:@"42-photos"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
//    
//    UIButton *favButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    favButton.frame = CGRectMake(60, 100, 200, 44);
//    [favButton setTitle:@"Profile" forState:UIControlStateNormal];
//    [self.view addSubview:favButton];
//    
//    [favButton addTarget:self action:@selector(showProfile:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)showProfile:(UIButton *)sender
//{
//    ProfileViewController *profileViewController = [[ProfileViewController alloc] init];
//    [self.navigationController pushViewController:profileViewController animated:YES];
//}
@end
