//
//  CompanyViewController.m
//  JoshuasCareerExpoApp
//
//  Created by Joshua Medernach on 9/6/15.
//  Copyright © 2015 Joshua Medernach. All rights reserved.
//

#import "CompanyViewController.h"

@implementation CompanyViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = self.name;
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.autoresizingMask = (UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth);
    self.scrollView.contentSize = CGSizeMake(414,900); //736
    
    
    UIImageView *companyImageView = [[UIImageView alloc] init];
    [companyImageView setImage:[UIImage imageNamed:self.image]];
    companyImageView.contentMode = UIViewContentModeScaleAspectFit;
    companyImageView.frame = CGRectMake(((self.scrollView.frame.size.width/2) - 150), 64, 300, 300);
    
    [self.scrollView addSubview:companyImageView];
    
    UILabel *companyName = [[UILabel alloc] init];
    companyName.text = self.name;
    companyName.frame = CGRectMake(0, 384, self.view.frame.size.width, 40);
    companyName.textAlignment = NSTextAlignmentCenter;
    
    UIFontDescriptor * fontD = [companyName.font.fontDescriptor
                                fontDescriptorWithSymbolicTraits:UIFontDescriptorTraitBold
                                | UIFontDescriptorTraitItalic];
    companyName.font = [UIFont fontWithDescriptor:fontD size:36];
    
    
    [self.scrollView addSubview:companyName];
    
    UILabel *companyBooth = [[UILabel alloc] init];
    companyBooth.text = [NSString stringWithFormat:@"Booth Number: %@", self.booth];
    companyBooth.frame = CGRectMake(11, 444, 300, 40);
    
    UIFontDescriptor * fontE = [companyBooth.font.fontDescriptor
                                fontDescriptorWithSymbolicTraits:UIFontDescriptorTraitBold
                                | UIFontDescriptorTraitBold];
    companyBooth.font = [UIFont fontWithDescriptor:fontE size:18];
    
    [self.scrollView addSubview:companyBooth];
    
    UILabel *companyDays = [[UILabel alloc] init];
    companyDays.text = [NSString stringWithFormat:@"Available on day(s): %@", self.days];
    companyDays.frame = CGRectMake(11, 504, 300, 40);
    
    UIFontDescriptor * fontF = [companyDays.font.fontDescriptor
                                fontDescriptorWithSymbolicTraits:UIFontDescriptorTraitBold
                                | UIFontDescriptorTraitBold];
    companyDays.font = [UIFont fontWithDescriptor:fontF size:18];
    
    [self.scrollView addSubview:companyDays];
    
    [self.view addSubview:self.scrollView];
}

@end
