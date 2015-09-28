//
//  CompaniesTableViewController.m
//  JoshuasCareerExpoApp
//
//  Created by Joshua Medernach on 9/6/15.
//  Copyright © 2015 Joshua Medernach. All rights reserved.
//

#import "CompaniesTableViewController.h"
#import "CompanyViewController.h"

@implementation CompaniesTableViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Companies";
        self.companies = @[
                           @{@"name": @"Apple Inc.", @"booth":@"44" , @"image":@"apple.png" , @"thumbnail":@"apple.png" , @"days":@"3"},
                           @{@"name": @"General Electric", @"booth":@"49" , @"image":@"ge.png" , @"thumbnail":@"ge.png" , @"days":@"1, 2"},
                           @{@"name": @"IBM", @"booth":@"60" , @"image":@"ibm.jpeg" , @"thumbnail":@"ibm.jpeg" , @"days":@"1, 2, 3"},
                           @{@"name": @"Microsoft", @"booth":@"55" , @"image":@"MSFT_logo_png.png" , @"thumbnail":@"MSFT_logo_png.png" , @"days":@"1"}
                           ];
    }
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return self.companies.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    cell.textLabel.text = self.companies[indexPath.row][@"name"];
    [cell.imageView setImage:[UIImage imageNamed:self.companies[indexPath.row][@"thumbnail"]]];
    
    UIImageView *rightIcon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Right-50"]];
    
    cell.accessoryView = rightIcon;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath 
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    CompanyViewController *companyViewController = [[CompanyViewController alloc] init];
    
    companyViewController.name = self.companies[indexPath.row][@"name"];
    companyViewController.image =self.companies[indexPath.row][@"image"];
    companyViewController.booth = self.companies[indexPath.row][@"booth"];
    companyViewController.days = self.companies[indexPath.row][@"days"];
    
    [self.navigationController pushViewController:companyViewController animated:YES];
}
@end