//
//  QuestionFactory.m
//  MathsDay2
//
//  Created by Ben Weinberg on 2017-01-11.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (Question *) generateRandomQuestion {
    NSArray *questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"Division"]; //setting up sublclass names
    
    int randomIndex = arc4random_uniform((uint32_t)questionSubclassNames.count); //pulling out random number
    NSString *className = questionSubclassNames[randomIndex]; //getting out actual string from list
    return [[NSClassFromString(className) alloc]init]; //instantiating class. This allows the compiler to know the strings in the array are actually methods. 
    
}

@end
