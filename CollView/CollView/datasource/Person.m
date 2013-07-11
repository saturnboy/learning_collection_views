//
//  Person.m
//  CollView
//
//  Created by Justin on 7/9/13.
//  Copyright (c) 2013 Saturnboy. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)initWithName:(NSString *)name shoeSize:(NSInteger)shoeSize {
    if ((self = [super init])) {
        _name = name;
        _shoeSize = shoeSize;
        
        if (name != nil) {
            NSRegularExpression* regex = [NSRegularExpression regularExpressionWithPattern:@"[a-z0-9\\s]+" options:0 error:nil];
            _initials = [regex stringByReplacingMatchesInString:name options:0 range:NSMakeRange(0, [name length]) withTemplate:@""];
        }
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat: @"%@ : %d", self.name, self.shoeSize];
}

@end
