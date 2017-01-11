//
//  ScoreKeeper.m
//  MathsDay2
//
//  Created by Ben Weinberg on 2017-01-11.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import "ScoreKeeper.h"
#import "Question.h"

@implementation ScoreKeeper

- (instancetype) init {
    self = [super init];
    if (self) {
        _mathObjects = [[NSMutableArray alloc] init];
    }
    return self;
}



- (NSString *) totalScore {
    
    NSInteger right=0;
    NSInteger wrong=0;
   
    for (Question *addition in self.mathObjects) {
        if (addition.right) {
            right += 1;
        }
        else {
            wrong += 1;
        }
}

NSString *finalMessage = [NSString stringWithFormat: @"you have %ld correct and %ld in correct" , right, wrong];
    return finalMessage;
}
@end

