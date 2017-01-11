//
//  AdditionQuestion.m
//  MathsDay2
//
//  Created by Ben Weinberg on 2017-01-10.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

//- (instancetype)  initWithValueOne:(float)number1 valueTwo:(float)number2 { //this is jsut the actual question
//    self = [super init];
//    if (self) {
//        
//        _valueOne = [self randomizeValues:number1 to:number2]; //valueOne is based on property
//        _valueTwo = [self randomizeValues:number1 to:number2]; //valueTwo is based on property
//        _answer = _valueOne + _valueTwo;
//        
//        //_startTime = [NSDate date];
//    }
//    return self;
//}


- (instancetype)init {
    self = [super init];
    if (self) {
        _valueOne = arc4random_uniform(30) + 1;
        _valueTwo = arc4random_uniform(30) + 1;
        _answer = _valueTwo + _valueOne;
    }
    return self;
}

//- (int)randomizeValues:(int)from to:(int)to {
//    int value = (int)from + arc4random() % (to-from+1);
//    return value;
//}     //circle brackets are for defining types


- (NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}


- (void) answerWithInput: (NSString *) input {
    if ([input integerValue] == _answer) {
        self.right = YES;
    }
}

- (NSTimeInterval) answerTime {
    return [self.endTime timeIntervalSinceDate: self.startTime]; //when logging to make it more human readable use token %.0d [maybe]
}


//
//if ([userInput integerValue] == newQuestion.answer)
//NSLog(@"your right!");
//else
//NSLog(@"your wrong");



@end
