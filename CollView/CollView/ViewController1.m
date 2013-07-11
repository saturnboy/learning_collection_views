//
//  ViewController1.m
//  CollView
//
//  Created by Justin on 7/9/13.
//  Copyright (c) 2013 Saturnboy. All rights reserved.
//

#import "ViewController1.h"
#import "People.h"

@interface ViewController1 ()

@end

@implementation ViewController1

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
    
    return cell;
}

@end
