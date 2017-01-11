//
//  SubtractionQuestion.m
//  MathsDay2
//
//  Created by Ben Weinberg on 2017-01-11.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import "SubtractionQuestion.h"
#import "Question.h"

@implementation SubtractionQuestion


- (void) generateQuestion {
    self.question = [NSString stringWithFormat:@"%ld - %ld ?", self.leftValue, self.rightValue];
}
- (void) generateAnswer {
    self.answer = self.rightValue + self.rightValue;
}
@end
