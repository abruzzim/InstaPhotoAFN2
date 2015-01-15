//
//  FavoritesViewController.m
//  InstaPhoto
//
//  Created by abruzzim on 12/30/14.
//  Copyright (c) 2014 Mario Abruzzi. All rights reserved.
//

#import "FavoritesViewController.h"
#import "ProfileViewController.h"

@interface FavoritesViewController ()

@end

@implementation FavoritesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
        self.title = @"Favorites";
        NSLog(@"%%FavoritesViewController-I-DEBUG, 'title' property set.");
        self.tabBarItem.image = [UIImage imageNamed:@"Favorites"];
        NSLog(@"%%FavoritesViewController-I-DEBUG, 'tabBarItem.image' property set.");
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    NSLog(@"%%FavoritesViewController-I-DEBUG, 'backgroundColor' property set.");
    
    /* Create Favorites Logo Image Object */
    
    // Create an image view object to display an image.
    UIImageView *myLogo = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo.jpg"]];
    NSLog(@"%%FavoritesViewController-I-DEBUG, 'Logo image view instantiated.");
    
    // Scale content to fit in the view's frame, while
    // preserving the original aspect ratio.
    [myLogo setContentMode:UIViewContentModeCenter];
    NSLog(@"%%FavoritesViewController-I-DEBUG, Image view content mode set.");
    
    // Set the frame, which descibes the view's location and size
    // in its superview's coordinate system.
    myLogo.frame = self.view.frame;
    NSLog(@"%%FavoritesViewController-I-DEBUG, Image view frame set.");
    
    // Add the logo image view as a subview.
    [self.view addSubview:myLogo];
    NSLog(@"%%FavoritesViewController-I-DEBUG, Subview added.");
    
    /* Create View Profile Button Object */
    
    UIButton *profileButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    profileButton.layer.cornerRadius = 5;
    profileButton.frame = CGRectMake((375/2)-(200/2), 200, 200, 44);
    profileButton.backgroundColor = [UIColor whiteColor];
    [profileButton setTitle:@"View Profile" forState:UIControlStateNormal];
    [self.view addSubview:profileButton];
    [profileButton addTarget:self
                      action:@selector(viewProfile:)
            forControlEvents:UIControlEventTouchUpInside];
    NSLog(@"%%FavoritesViewController-I-DEBUG, View Profile Button Object added.");
}

- (void)viewProfile:(UIButton *)sender {
    ProfileViewController *profileViewController = [[ProfileViewController alloc] init];
    [self.navigationController pushViewController:profileViewController animated:YES];
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
