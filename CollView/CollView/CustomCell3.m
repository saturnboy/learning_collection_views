//
//  CustomCell3.m
//  CollView
//
//  Created by Justin on 7/15/13.
//  Copyright (c) 2013 Saturnboy. All rights reserved.
//

#import "CustomCell3.h"

@implementation CustomCell3

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setupCell:(Person *)person {
    _name.text = [person.name stringByReplacingOccurrencesOfString:@" " withString:@"\n" options:0 range:NSMakeRange(0, person.name.length)];
    _shoeSize.text = [NSString stringWithFormat:@"sz%d", person.shoeSize];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
