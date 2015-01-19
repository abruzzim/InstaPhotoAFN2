//
//  FeedTableViewController.h
//  InstaPhoto
//
//  Created by Mario Abruzzi on 1/18/15.
//  Copyright (c) 2015 Mario Abruzzi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FeedTableViewController : UITableViewController

@property (strong, nonatomic) NSArray *imageTitleArray;
@property (strong, nonatomic) NSArray *imageFileNameArray;
@property (strong, nonatomic) NSArray *imageDetailArray;
@property (strong, nonatomic) NSArray *imageThumbnailArray;

@end
