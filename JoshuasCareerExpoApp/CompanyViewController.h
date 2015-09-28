//
//  CompanyViewController.h
//  JoshuasCareerExpoApp
//
//  Created by Joshua Medernach on 9/6/15.
//  Copyright © 2015 Joshua Medernach. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CompanyViewController : UIViewController

@property (strong, nonatomic) UIScrollView *scrollView;
@property (strong) NSString *name;
@property (strong) NSString *booth;
@property (strong) NSString *image;
@property (strong) NSString *days;

@end
