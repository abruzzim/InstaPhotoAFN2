//
//  PhotoViewController.m
//  InstaPhoto
//
//  Created by Mario Abruzzi on 1/18/15.
//  Copyright (c) 2015 Mario Abruzzi. All rights reserved.
//

#import "PhotoViewController.h"

@interface PhotoViewController ()

@end

@implementation PhotoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    NSLog(@"%%PhotoViewController-I-DEBUG, Instance method 'viewDidLoad' additional setup.");

    self.view.backgroundColor = [UIColor lightGrayColor];
    NSLog(@"%%PhotoViewController-I-DEBUG, 'backgroundColor' property set.");
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:self.imageFileName]];
    [imageView setContentMode:UIViewContentModeCenter];
    imageView.frame = CGRectMake((375/2)-(300/2), 40, 300, 300);
    [self.view addSubview:imageView];
    
    UILabel *imageTitleLabel = [[UILabel alloc] init];
    imageTitleLabel.text = self.imageTitle;
    imageTitleLabel.frame = CGRectMake((375/2)-(300/2), 350, 300, 40);
    [self.view addSubview:imageTitleLabel];
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
