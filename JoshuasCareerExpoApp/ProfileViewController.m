//
//  ProfileViewController.m
//  JoshuasCareerExpoApp
//
//  Created by Joshua Medernach on 9/7/15.
//  Copyright © 2015 Joshua Medernach. All rights reserved.
//

#import "ProfileViewController.h"

@implementation ProfileViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Profile";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.autoresizingMask = (UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth);
    self.scrollView.contentSize = CGSizeMake(414, 800);
    
    UIImageView *profileImageView = [[UIImageView alloc] init];
    [profileImageView setImage:[UIImage imageNamed:@"General Electric.jpg"]];
    profileImageView.contentMode = UIViewContentModeScaleAspectFit;
    profileImageView.frame = CGRectMake(((self.scrollView.frame.size.width/2) - 150), 64, 300, 300);
    
    [self.scrollView addSubview:profileImageView];
    
    UILabel *profileName = [[UILabel alloc] init];
    profileName.text = @"Joshua Medernach";
    profileName.frame = CGRectMake(0, 384, self.view.frame.size.width, 40);
    profileName.textAlignment = NSTextAlignmentCenter;
    
    UIFontDescriptor * fontD = [profileName.font.fontDescriptor
                                fontDescriptorWithSymbolicTraits:UIFontDescriptorTraitBold
                                | UIFontDescriptorTraitItalic];
    profileName.font = [UIFont fontWithDescriptor:fontD size:36];
    
    
    [self.scrollView addSubview:profileName];
    
    
    UITextView *profileBiography = [[UITextView alloc] initWithFrame:CGRectMake(12,260,300,180)];
    profileBiography.font = [UIFont fontWithName:@"Helvetica" size:15];
    profileBiography.editable = NO;
    profileBiography.text = [NSString stringWithFormat:@"\tThis app is created by Joshua Medernach for Fall 2015 Career Expo. \n\n"
                             "\tJoshua Medernach is currently an IT Security Intern at Albemarle Corporation. He has previously interned under the SWEAP Program headed by Jeff Serpas at GE Capital's Digital Solutions Technology Center in New Orleans. \n\n"
                             "\tHe is currently attending Louisiana State University and anticipating to graduate in May 2016 with B.S. in Computer Science and a minor in Information Technology Management."];
    profileBiography.frame = CGRectMake(0, 444, self.scrollView.frame.size.width, 400);
    
    [self.scrollView addSubview:profileBiography];
    
    
    
    
    
    [self.view addSubview:self.scrollView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
