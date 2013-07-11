//
//  ViewController2.m
//  CollView
//
//  Created by Justin on 7/9/13.
//  Copyright (c) 2013 Saturnboy. All rights reserved.
//

#import "ViewController2.h"
#import "People.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
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

#pragma mark - Collection view data source

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView*)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView*)collectionView numberOfItemsInSection:(NSInteger)section {
    return [[[People sharedInstance] people] count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"MyCell" forIndexPath:indexPath];
    
    NSLog(@"%d : view=%.0fx%.0f cell=%.0fx%.0f",
          indexPath.item,
          self.collectionView.frame.size.width, self.collectionView.frame.size.height,
          cell.frame.size.width, cell.frame.size.height);
    
    Person *p = [[People sharedInstance] person:indexPath.item];
    UILabel* lbl = (UILabel *)[cell viewWithTag:123];
    lbl.text = [p.name stringByReplacingOccurrencesOfString:@" " withString:@"\n" options:0 range:NSMakeRange(0, p.name.length)];
    [cell addSubview:lbl];
    
    // add bg color so we can see cells
    cell.backgroundColor = [UIColor colorWithRed:(indexPath.item % 2 == 0 ? 0.3f : 0.2f)
                                           green:(indexPath.item % 2 == 0 ? 0.3f : 0.2f)
                                            blue:(indexPath.item % 2 == 0 ? 0.3f : 0.2f)
                                           alpha:1.0];
    return cell;
}

#pragma mark - Collection view cell size

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    // expand cell to fill the entire view
    return self.collectionView.frame.size;
}

#pragma mark - Collection view rotation

-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    // compute current idx from offset
    float idx = roundf(self.collectionView.contentOffset.x / self.collectionView.frame.size.width);
    
    // compute new offset in target orientation
    float newX = idx * ((toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft) ||
                        (toInterfaceOrientation == UIInterfaceOrientationLandscapeRight) ?
                        [[UIScreen mainScreen] bounds].size.height : // going to landscape, use screen H as new cell W
                        [[UIScreen mainScreen] bounds].size.width); // going to portrait, use screen W as new cell W
    
    // set new office
    [self.collectionView setContentOffset:CGPointMake(newX, 0)];
    
    // reload everything
    [self.collectionView reloadData];
}

@end
