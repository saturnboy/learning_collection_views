//
//  ViewController0.m
//  CollView
//
//  Created by Justin on 7/9/13.
//  Copyright (c) 2013 Saturnboy. All rights reserved.
//

#import "ViewController0.h"
#import "People.h"

@interface ViewController0 ()

@end

@implementation ViewController0

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[[People sharedInstance] people] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell" forIndexPath:indexPath];
    
    // config the cell
    Person *p = [[People sharedInstance] person:indexPath.row];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@-%d", p.initials, p.shoeSize];
    cell.textLabel.text = p.name;
    //cell.textLabel.font = [UIFont fontWithName:@"Helvetica-Light" size:30];
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
