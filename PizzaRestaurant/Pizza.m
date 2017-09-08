//
//  PIzza.m
//  PizzaRestaurant
//
//  Created by Jaison Bhatti on 2017-09-08.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza


+ (enum PizzaSize)parseSize:(NSString *)sizeOfPizza {
    if ([sizeOfPizza isEqualToString:@"small"]) {
        return pizzaSizeSmall;
    } else if ([sizeOfPizza isEqualToString:@"medium"]) {
        return pizzaSizeMedium;
    } else if ([sizeOfPizza isEqualToString:@"large"]) {
        return pizzaSizeLarge;
    } else {
        return 0;
    }
}


- (instancetype)initWithSize:(enum PizzaSize)pizzaSize andToppings:(NSArray*)pizzaToppings {
    self = [super init];
    if (self) {
        _size = pizzaSize;
        _toppings = pizzaToppings;
        }    
    return self;
}



@end

