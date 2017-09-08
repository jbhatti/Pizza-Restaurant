//
//  PIzza.h
//  PizzaRestaurant
//
//  Created by Jaison Bhatti on 2017-09-08.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

enum PizzaSize{
    pizzaSizeSmall,
    pizzaSizeMedium,
    pizzaSizeLarge,
};

@interface Pizza : NSObject


+ (enum PizzaSize)parseSize:(NSString *)sizeOfPizza;


@property (readonly) enum PizzaSize size;
@property (readonly) NSArray* toppings;

- (instancetype)initWithSize:(enum PizzaSize)pizzaSize andToppings:(NSArray*)pizzaToppings;



@end
