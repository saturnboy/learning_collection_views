//
//  People.m
//  CollView
//
//  Created by Justin on 7/9/13.
//  Copyright (c) 2013 Saturnboy. All rights reserved.
//

#import "People.h"

@implementation People

+ (People *)sharedInstance {
    static dispatch_once_t once = 0;
    static People *_sharedObject = nil;
    dispatch_once(&once, ^{
        _sharedObject = [[People alloc] init];
    });
    return _sharedObject;
}

- (id)init {
    if ((self = [super init])) {
        _people = @[[[Person alloc] initWithName:@"Alice Smith" shoeSize:7],
                    [[Person alloc] initWithName:@"Bob Jones" shoeSize:11],
                    [[Person alloc] initWithName:@"Charlie Johnson" shoeSize:10],
                    [[Person alloc] initWithName:@"Dale Brown" shoeSize:13],
                    [[Person alloc] initWithName:@"Ethel Davis" shoeSize:9],
                    [[Person alloc] initWithName:@"Fred Miller" shoeSize:10],
                    [[Person alloc] initWithName:@"Greg Williams" shoeSize:8],
                    [[Person alloc] initWithName:@"Helen Wilson" shoeSize:7],
                    [[Person alloc] initWithName:@"Irene Taylor" shoeSize:6],
                    [[Person alloc] initWithName:@"John Anderson" shoeSize:11],
                    [[Person alloc] initWithName:@"Kathleen Thomas" shoeSize:8],
                    [[Person alloc] initWithName:@"Larry White" shoeSize:12],
                    [[Person alloc] initWithName:@"Mark Thompson" shoeSize:10],
                    [[Person alloc] initWithName:@"Nancy Garcia" shoeSize:9],
                    [[Person alloc] initWithName:@"Oscar Rodriguez" shoeSize:11],
                    [[Person alloc] initWithName:@"Perry Clark" shoeSize:12],
                    [[Person alloc] initWithName:@"Quincy Jones" shoeSize:9],
                    [[Person alloc] initWithName:@"Rob Hall" shoeSize:8],
                    [[Person alloc] initWithName:@"Sam Edwards" shoeSize:9],
                    [[Person alloc] initWithName:@"Tom Walker" shoeSize:13],
                    [[Person alloc] initWithName:@"Ubalo Jimenez" shoeSize:12],
                    [[Person alloc] initWithName:@"Valeria Lee" shoeSize:7],
                    [[Person alloc] initWithName:@"Wanda Ward" shoeSize:8],
                    [[Person alloc] initWithName:@"Xander Reed" shoeSize:11],
                    [[Person alloc] initWithName:@"Yvonne Campbell" shoeSize:7],
                    [[Person alloc] initWithName:@"Zed Stewart" shoeSize:12]];
    }
    return self;
}

- (Person *)person:(NSInteger)idx {
    if (idx >= 0 && idx < [self.people count]) {
        return self.people[idx];
    }
    return nil;
}

@end
