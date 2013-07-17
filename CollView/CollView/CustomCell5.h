//
//  CustomCell5.h
//  CollView
//
//  Created by Justin on 7/15/13.
//  Copyright (c) 2013 Saturnboy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@interface CustomCell5 : UICollectionViewCell <UICollectionViewDataSource, UICollectionViewDelegate>

@property (nonatomic, strong) IBOutlet UICollectionView *collectionView;
@property (nonatomic, strong) IBOutlet UILabel *nameLbl;
@property (nonatomic, strong) IBOutlet UILabel *shoeSizeLbl;
@property (nonatomic, readonly) NSInteger shoeSize;

- (void)setupCell:(Person *)person;

@end
