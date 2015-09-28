//
//  MapViewController.m
//  JoshuasCareerExpoApp
//
//  Created by Joshua Medernach on 9/7/15.
//  Copyright © 2015 Joshua Medernach. All rights reserved.
//

#import "MapViewController.h"

@implementation MapViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Booth Map";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *mapImage = [UIImage imageNamed:self.mapImageFile];
    self.mapImageView = [[UIImageView alloc] initWithImage:mapImage];
    self.mapImageView.bounds = CGRectMake(0, 0, mapImage.size.width, mapImage.size.height);
    self.mapImageView.contentMode = UIViewContentModeCenter;
    
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.backgroundColor = [UIColor whiteColor];
    [self.scrollView addSubview:self.mapImageView];
    
    self.scrollView.minimumZoomScale = 0.5;
    self.scrollView.maximumZoomScale = 6.0;
    self.scrollView.contentSize = CGSizeMake(1280, 960);
    self.scrollView.delegate = self;
    
    
    [self.view addSubview:self.scrollView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return self.mapImageView;
}

@end