//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"
#import "HappyManager.h"
#import "Manager.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        Manager *jerk = [[Manager alloc] init];
        HappyManager *nice = [[HappyManager alloc] init];
        id activeManager = nil;
        while (TRUE) {
            // Loop forever
            
            // Select manager
            printf("Manager (nice/jerk/none)> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            if ([inputString isEqualToString:@"jerk"]) {
                activeManager = jerk;
            } else if ([inputString isEqualToString:@"nice"]) {
                activeManager = nice;
            } else {
                activeManager = nil;
            }
            restaurantKitchen.delegate = activeManager;
            
            // Pizza size
            printf("What's your order? > ");
            fgets (str, 100, stdin);
            
            inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            //            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            NSString *sizeStr = commandWords[0];
            PizzaSize size = [Kitchen parsePizzaSize:sizeStr];
            
            NSArray<NSString*>* toppings = [commandWords subarrayWithRange:NSMakeRange(1, [commandWords count] - 1)];
            
            //            NSLog(@"Size = %@", sizeStr);
            //            NSLog(@"Toppings =  %@", toppings);
            
            // And then send some message to the kitchen...
            Pizza *pizza = [restaurantKitchen makePizzaWithSize:size toppings:toppings];
            NSLog(@"Pizza! %@", pizza);
            //            NSLog(@"Our pizza has %@", pizza.toppings);
            //            NSLog(@"Our pizza is %ld", pizza.size);
        }
        
    }
    return 0;
}

