//
//  PIzza.h
//  PizzaRestaurant
//
//  Created by Jaison Bhatti on 2017-09-08.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, PizzaSize) {
    PizzaSizeSmall,
    PizzaSizeMedium,
    PizzaSizeLarge
};
// equivalent to
//typedef NSUInteger PizzaSize;
//#define PizzaSizeSmall 0
//#define PizzaSizeMedium 1
//#define PizzaSizeLarge 2

//enum PizzaSize {
//    Small, Medium, Large
//};

@interface Pizza : NSObject

//@property (nonatomic,assign,readonly) enum PizzaSize size;
@property (nonatomic,assign,readonly) PizzaSize size;

@property (nonatomic,strong,readonly) NSArray<NSString*>* toppings;

- (instancetype)initWithSize:(PizzaSize)size toppings:(NSArray<NSString*>*)toppings;

@end
