//
//  FeedTableViewController.m
//  InstaPhoto
//
//  Created by Mario Abruzzi on 1/18/15.
//  Copyright (c) 2015 Mario Abruzzi. All rights reserved.
//

#import "FeedTableViewController.h"
#import "PhotoViewController.h"

@interface FeedTableViewController ()

@end

@implementation FeedTableViewController

- (id)initWithNibName:(NSString *)nibNameOrNil
               bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil
                           bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization.
        self.title = @"Feed";
        NSLog(@"%%FeedTableViewController-I-DEBUG, 'title' property set.");
        self.tabBarItem.image = [UIImage imageNamed:@"Feed"];
        NSLog(@"%%FeedTableViewController-I-DEBUG, 'tabBarItem.image' property set.");
        self.imageTitleArray = @[@"Bear",@"Dog",@"Duck",@"Horse",@"Peacock"];
        NSLog(@"%%FeedTableViewController-I-DEBUG, 'imageTitleArray' property set.");
        self.imageFileNameArray = @[@"bear.jpg",@"dog.jpg",@"duck.jpg",@"horse.jpg",@"peacock.jpg"];
        NSLog(@"%%FeedTableViewController-I-DEBUG, 'imageFileNameArray' property set.");
        self.imageDetailArray = @[@"A Bear",@"A Dog",@"A Duck",@"A Horse",@"A Peacock"];
        NSLog(@"%%FeedTableViewController-I-DEBUG, 'imageDetailArray' property set.");
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    NSLog(@"%%FeedTableViewController-I-DEBUG, Instance method 'numberOfSectionsInTableView:'.");
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    NSLog(@"%%FeedTableViewController-I-DEBUG, Instance method 'tableView:numberOfRowsInSection:'.");
    return self.imageTitleArray.count;
}

/*
 This method runs one time for each row as it becomes visible.
 */
- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Initialize and setup each cell in the table view.

    NSLog(@"%%FeedTableViewController-I-DEBUG, Instance method 'tableView:cellForRowAtIndexPath:'.");
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID"];
    
    // If there is no reusable cell with identifier @"CellID" then allocate a new one.
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle
                                      reuseIdentifier:@"CellID"];
    }
    
    // Set the cell label text.
    cell.textLabel.text = self.imageTitleArray[indexPath.row];
    
    // Set the cell detail text label.
    cell.detailTextLabel.text = self.imageDetailArray[indexPath.row];
    
    return cell;
}

/*
 Log the indexPath Row and Filename to the Console.
 */
- (void)       tableView:(UITableView *)tableView
 didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%%FeedTableViewController-I-DEBUG, Instance method 'tableView:didSelectRowAtIndexPath' %ld.", indexPath.row);
    
    PhotoViewController *photoVC = [[PhotoViewController alloc] init];   // Instantiate photo VC.
    photoVC.imageTitle    = self.imageTitleArray[indexPath.row];         // Set image title.
    photoVC.imageFileName = self.imageFileNameArray[indexPath.row];      // Set image file name.
    [self.navigationController pushViewController:photoVC animated:YES]; // Push photoVC onto Nav Controller array stack.
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
