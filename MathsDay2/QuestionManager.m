//
//  QuestionManager.m
//  MathsDay2
//
//  Created by Ben Weinberg on 2017-01-11.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init {
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
        
}


- (NSString*) timeOutput {
    int total = [self totalTime];
    int average = total / self.questions.count;
    NSString *timeOutput = [NSString stringWithFormat: @"total time: %d seconds, average time: %d seconds", total, average];
    return timeOutput;
}

-(NSInteger) totalTime {
    int total = 0;
    for (AdditionQuestion *question in self.questions) {
    total = total + [question answerTime];
}
return total;
}






@end
