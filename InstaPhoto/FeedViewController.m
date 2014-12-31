//
//  FeedViewController.m
//  InstaPhoto
//
//  Created by abruzzim on 12/30/14.
//  Copyright (c) 2014 Mario Abruzzi. All rights reserved.
//

#import "FeedViewController.h"

@interface FeedViewController ()

@end

@implementation FeedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title                = @"Feed";
    self.view.backgroundColor = [UIColor blueColor];
    self.tabBarItem.image     = [UIImage imageNamed:@"Feed"];
    
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
