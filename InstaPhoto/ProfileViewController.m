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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Profile";
        NSLog(@"%%ProfileViewController-I-DEBUG, 'title' property set.");
        self.tabBarItem.image = [UIImage imageNamed:@"Profile"];
        NSLog(@"%%ProfileViewController-I-DEBUG, 'tabBarItem.image' property set.");
    }
    return self;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // Custom view controller behavior.
    self.view.backgroundColor = [UIColor yellowColor];
    NSLog(@"%%ProfileViewController-I-DEBUG, 'backgroundColor' property set.");
    
    /* Setup Scroll View */

    // Scroll View - class supports displaying content that is
    // larger than the size of the application's window.
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    
    // Set the integer bit mask that determines how the receiver resizes
    // itself when its superview's bounds change.
    self.scrollView.autoresizingMask = (UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth);
    
    // Set the size of the content view.
    // The scroll view height is "y" + "height of last view" + "padding"
    // In this case: 700 + 40 + 100 = 840
    self.scrollView.contentSize = CGSizeMake(320, 840);
    
    /* Add Picture */
    
    // Create an image view object to display an image.
    UIImageView *myView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Me.jpg"]];
    
    // Set the frame, which descibes the view's location and size
    // in its superview's coordinate system.
    myView.frame = CGRectMake(30, 30, 100, 100);
    
    // Add the picture as a subview.
    [self.scrollView addSubview:myView];
    
    /* Add Name */
    
    // Initialize and return a newly allocated view object with the specified frame rectangle.
    UILabel *nameLbl = [[UILabel alloc] initWithFrame:CGRectMake(30, 150, 280, 40)];
    // Set the text property.
    nameLbl.text = @"Name: Mario Abruzzi";
    // Add the label as a subview.
    [self.scrollView addSubview:nameLbl];
    
    /* Add City */

    UILabel *cityLbl = [[UILabel alloc] initWithFrame:CGRectMake(30, 190, 280, 40)];
    cityLbl.text = @"From: New York";
    [self.scrollView addSubview:cityLbl];
    
    /* Add Biography */

    UITextView *bioText = [[UITextView alloc] initWithFrame:CGRectMake(30, 280, 150, 400)];
    // Set the text font.
    bioText.font = [UIFont fontWithName:@"Helvetica" size:15];
    // Boolean value indicating that this receiver is not editable.
    bioText.editable = NO;
    // Add text.
    bioText.text = @"Bio: Mario Abruzzi is coding along with Gregg Pollack, the founder of Envy Labs and teacher of multiple courses at Code School. Code School teaches web programming in the comfort of my browser with video lessons, coding chalenges and screencasts. Currently he is re-doing this whole course to clean up his directories and version control.";
    [self.scrollView addSubview:bioText];

    /* Add Membership */
    
    UILabel *memberSinceLbl = [[UILabel alloc] initWithFrame:CGRectMake(30, 700, 280, 40)];
    memberSinceLbl.text = @"Member Since: 1997";
    [self.scrollView addSubview:memberSinceLbl];
    
    /* Setup Scroll View */
    
    // Add the scrollView to the view controller's view.
    [self.view addSubview:self.scrollView];
    
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
