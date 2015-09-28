//
//  CompaniesNavigationController.m
//  JoshuasCareerExpoApp
//
//  Created by Joshua Medernach on 9/7/15.
//  Copyright © 2015 Joshua Medernach. All rights reserved.
//

#import "CustomNavigationController.h"

@implementation CustomNavigationController : UINavigationController

- (UIImage *)imageWithImage:(UIImage *)image scaledToSize:(CGSize)newSize {
    UIGraphicsBeginImageContextWithOptions(newSize, NO, 0.0);
    [image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

@end