//
//  HappyManager.m
//  PizzaRestaurant
//
//  Created by Jaison Bhatti on 2017-09-09.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "HappyManager.h"

@implementation HappyManager

- (BOOL)kitchen:(Kitchen *)kitchen
shouldMakePizzaOfSize:(PizzaSize)size
    andToppings:(NSArray *)toppings
{
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza
{
    NSLog(@"Enjoy your pizza! 😈");
}

@end
