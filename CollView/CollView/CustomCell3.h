//
//  CustomCell3.h
//  CollView
//
//  Created by Justin on 7/15/13.
//  Copyright (c) 2013 Saturnboy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@interface CustomCell3 : UICollectionViewCell

@property (nonatomic, strong) IBOutlet UILabel *name;
@property (nonatomic, strong) IBOutlet UILabel *shoeSize;

- (void)setupCell:(Person *)person;

@end
