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
    // Do any additional setup after loading the view.
    //self.title                = @"Profile";
    //self.tabBarItem.image     = [UIImage imageNamed:@"Profile"];
    self.view.backgroundColor = [UIColor yellowColor];
    
    // Create an image view object to display an image.
    UIImageView *myView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Me.jpg"]];
    
    // Scale content to fit in the view's frame, while
    // preserving the original aspect ratio.
    [myView setContentMode:UIViewContentModeScaleAspectFill];
    
    // Set the frame, which descibes the view's location and size
    // in its superview's coordinate system.
    myView.frame = self.view.frame;
    
    // Add the profile view as a subview.
    [self.view addSubview:myView];
    
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
