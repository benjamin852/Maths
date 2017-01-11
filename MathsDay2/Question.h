//
//  AdditionQuestion.h
//  MathsDay2
//
//  Created by Ben Weinberg on 2017-01-10.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

//- (instancetype) initWithValueOne:(float)number1 valueTwo:(float)number2;  //a method that does initialization 


//@property (nonatomic) NSInteger valueOne;
//@property (nonatomic) NSInteger valueTwo;
@property (nonatomic) NSInteger randomValue;
@property (nonatomic) NSString* question;
@property (nonatomic) NSInteger answer;


- (void) answerWithInput: (NSString *) input;

@property (nonatomic) BOOL right;


@property (nonatomic) NSDate *startTime;
@property (nonatomic) NSDate *endTime;

@property (nonatomic) NSInteger rightValue;      /// double check why not to use pointers when declaring properties???????
@property (nonatomic) NSInteger leftValue;

- (NSTimeInterval) answerTime; 
- (void) generateQuestion;
- (void) generateAnswer;
@end
