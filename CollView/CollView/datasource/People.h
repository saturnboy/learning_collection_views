//
//  People.h
//  CollView
//
//  Created by Justin on 7/9/13.
//  Copyright (c) 2013 Saturnboy. All rights reserved.
//

#import "Person.h"

@interface People : NSObject

@property (nonatomic, readonly) NSArray *people;

+ (People *)sharedInstance;

- (Person *)person:(NSInteger)idx;

@end
