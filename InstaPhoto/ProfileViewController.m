//
//  ProfileViewController.m
//  InstaPhoto
//
//  Created by abruzzim on 12/30/14.
//  Copyright (c) 2014 Mario Abruzzi. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // Custom view controller behavior.
    //self.title                = @"Profile";
    //self.tabBarItem.image     = [UIImage imageNamed:@"Profile"];
    self.view.backgroundColor = [UIColor yellowColor];
    
    /* Add Picture */
    
    // Create an image view object to display an image.
    UIImageView *myView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Me.jpg"]];
    
    // Set the frame, which descibes the view's location and size
    // in its superview's coordinate system.
    myView.frame = CGRectMake(25, 30, 100, 160);
    
    // Add the picture as a subview.
    [self.view addSubview:myView];
    
    /* Add Name */
    
    // Initialize and return a newly allocated view object with the specified frame rectangle.
    UILabel *nameLbl = [[UILabel alloc] initWithFrame:CGRectMake(30, 200, 280, 40)];
    // Set the text property.
    nameLbl.text = @"Name: Mario Abruzzi";
    // Add the label as a subview.
    [self.view addSubview:nameLbl];
    
    /* Add City */

    UILabel *cityLbl = [[UILabel alloc] initWithFrame:CGRectMake(30, 240, 280, 40)];
    cityLbl.text = @"From: New York";
    [self.view addSubview:cityLbl];
    
    /* Add Biography */

    UITextView *bioText = [[UITextView alloc] initWithFrame:CGRectMake(30, 280, 150, 400)];
    // Set the text font.
    bioText.font = [UIFont fontWithName:@"Helvetica" size:15];
    // Boolean value indicating that this receiver is not editable.
    bioText.editable = NO;
    // Add text.
    bioText.text = @"Bio: Mario Abruzzi is coding along with Gregg Pollack, the founder of Envy Labs and teacher of multiple courses at Code School. Code School teaches web programming in the comfort of my browser with video lessons, coding chalenges and screencasts.";
    [self.view addSubview:bioText];

    /* Add Membership */
    
    UILabel *memberSinceLbl = [[UILabel alloc] initWithFrame:CGRectMake(30, 700, 280, 40)];
    memberSinceLbl.text = @"Member Since: 1997";
    [self.view addSubview:memberSinceLbl];
    
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
