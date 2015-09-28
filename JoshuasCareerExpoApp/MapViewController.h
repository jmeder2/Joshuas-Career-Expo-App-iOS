//
//  MapViewController.m
//  JoshuasCareerExpoApp
//
//  Created by Joshua Medernach on 9/7/15.
//  Copyright © 2015 Joshua Medernach. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MapViewController : UIViewController<UIScrollViewDelegate>

@property(nonatomic, assign) id<UIScrollViewDelegate> delegate;

@property (strong, nonatomic) UIScrollView *scrollView;
@property (strong) UIImageView *mapImageView;
@property (strong) NSString *mapImageFile;

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView;

@end