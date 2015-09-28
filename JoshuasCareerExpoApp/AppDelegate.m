//
//  AppDelegate.m
//  JoshuasCareerExpoApp
//
//  Created by Joshua Medernach on 9/6/15.
//  Copyright (c) 2015 Joshua Medernach. All rights reserved.
//

#import "AppDelegate.h"
#import "CompaniesTableViewController.h"
#import "CustomNavigationController.h"
#import "ProfileViewController.h"
#import "MapViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // Create Companies Table View Controller
    CompaniesTableViewController *companiesTableViewController = [[CompaniesTableViewController alloc] initWithStyle:UITableViewStylePlain];
    // Wrap the Table View Controller with a Navigation Controller
    CustomNavigationController *companiesNavController = [[CustomNavigationController alloc] initWithRootViewController:companiesTableViewController];
    UIImage *companiesImageTabIcon = [UIImage imageNamed:@"Conference Filled-50"];
    companiesNavController.tabBarItem.image = [companiesNavController imageWithImage:companiesImageTabIcon scaledToSize:CGSizeMake(25,25)];
    
    // Create Map View Controller
    MapViewController *mapViewController = [[MapViewController alloc] init];
    mapViewController.mapImageFile = @"boothMap";
    // Wrap the Map View Controller with a Navigation Controller
    CustomNavigationController *mapNavController = [[CustomNavigationController alloc] initWithRootViewController:mapViewController];
    UIImage *mapImageTabIcon = [UIImage imageNamed:@"Treasure Map-50"];
    mapNavController.tabBarItem.image = [mapNavController imageWithImage:mapImageTabIcon scaledToSize:CGSizeMake(25,25)];
    
    // Create Profile View Controller
    ProfileViewController *profileViewController = [[ProfileViewController alloc] init];
    // Wrap the Profile View Controller with a Navigation Controller
    CustomNavigationController *profileNavController = [[CustomNavigationController alloc] initWithRootViewController:profileViewController];
    UIImage *profilemageTabIcon = [UIImage imageNamed:@"Gender Neutral User Filled-50"];
    profileNavController.tabBarItem.image = [profileNavController imageWithImage:profilemageTabIcon scaledToSize:CGSizeMake(25,25)];
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    [tabBarController setViewControllers:@[companiesNavController, mapNavController, profileNavController] animated:YES];
    
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = tabBarController;
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
