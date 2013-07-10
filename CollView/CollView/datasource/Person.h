//
//  Person.h
//  CollView1
//
//  Created by Justin on 7/9/13.
//  Copyright (c) 2013 Saturnboy. All rights reserved.
//

@interface Person : NSObject

@property (nonatomic,readonly) NSString *name;
@property (nonatomic,readonly) NSInteger shoeSize;
@property (nonatomic,readonly) NSString *initials;

- (id)initWithName:(NSString *)name shoeSize:(NSInteger)shoeSize;

@end
