//
//  PIzza.m
//  PizzaRestaurant
//
//  Created by Jaison Bhatti on 2017-09-08.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize:(PizzaSize)size toppings:(NSArray<NSString*>*)toppings
{
    self = [super init];
    if (self) {
        _size = size;
        _toppings = toppings;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Pizza with %@",
            [self.toppings componentsJoinedByString:@", "]];
}

@end

