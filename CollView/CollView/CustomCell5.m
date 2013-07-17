//
//  CustomCell5.m
//  CollView
//
//  Created by Justin on 7/15/13.
//  Copyright (c) 2013 Saturnboy. All rights reserved.
//

#import "CustomCell5.h"

@implementation CustomCell5

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setupCell:(Person *)person {
    _nameLbl.text = person.name;
    _shoeSizeLbl.text = [NSString stringWithFormat:@"sz%d", person.shoeSize];
    _shoeSize = person.shoeSize;
    
    // reload everything - forces data source to reset itself
    [self.collectionView reloadData];
}

#pragma mark - Collection view data source

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView*)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView*)collectionView numberOfItemsInSection:(NSInteger)section {
    return _shoeSize;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"SubCell" forIndexPath:indexPath];
    
    NSLog(@"sub%d : view=%.0fx%.0f cell=%.0fx%.0f",
          indexPath.item,
          self.collectionView.frame.size.width, self.collectionView.frame.size.height,
          cell.frame.size.width, cell.frame.size.height);
    
    UILabel* lbl = (UILabel *)[cell viewWithTag:1234];
    lbl.text = [NSString stringWithFormat:@"%d", (indexPath.item + 1)];
    [cell addSubview:lbl];
    
    return cell;
}

#pragma mark - Collection view selection

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"sub%d - select sz%d", indexPath.item, (indexPath.item+1));
    _shoeSizeLbl.text = [NSString stringWithFormat:@"sz%d", (indexPath.item + 1)];
}

@end
