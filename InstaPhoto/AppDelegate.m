//
//  AppDelegate.m
//  InstaPhoto
//
//  Created by abruzzim on 12/30/14.
//  Copyright (c) 2014 Mario Abruzzi. All rights reserved.
//

#import "AppDelegate.h"
#import "FeedViewController.h"
#import "FavoritesViewController.h"
#import "ProfileViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    /*
     Instantiate UIViewControllers (custom view controllers)
     */
    FeedViewController      *feedViewController      = [[FeedViewController alloc] init];
    FavoritesViewController *favoritesViewController = [[FavoritesViewController alloc] init];
    ProfileViewController   *profileViewController   = [[ProfileViewController alloc] init];
    
    /*
     Instantiate Navigation View Controllers.
     */
    UINavigationController *feedNavController      = [[UINavigationController alloc] initWithRootViewController:feedViewController];
    UINavigationController *favoritesNavController = [[UINavigationController alloc] initWithRootViewController:favoritesViewController];
    UINavigationController *profileNavController   = [[UINavigationController alloc] initWithRootViewController:profileViewController];

    /*
     Instantiate a Tab Bar Controller.
     */
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
    /*
     Add Nav View Controllers to the Tab Bar Controller.
     Additionally, animate tab bar items for the view controllers into position.
     */
    [tabBarController setViewControllers:@[feedNavController, favoritesNavController, profileNavController]
                                animated:YES];
    
    /*
     Instantiate a UIWindow to manage and coordinate the app's views
     that is set to the bounds of the physical device's main screen.
     */
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    /*
     Installs the view controller’s view as the content view of the window.
     */
    self.window.rootViewController = tabBarController;
    
    /*
     Make the receiver the main window and display it in front of other windows at the same window level.
     */
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
