//
//  main.m
//  MathsDay2
//
//  Created by Ben Weinberg on 2017-01-10.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandling.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "AdditionQuestion.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputHandling *inputHandling = [[InputHandling alloc] init]; //this connects to the class
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc]init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        
        
        
        while (true) { //true= while it is true it will keep running.
            Question *question = [questionFactory generateRandomQuestion];
            [question generateQuestion];
            [question generateAnswer];
            
            [scoreKeeper.mathObjects addObject:question];
            [questionManager.questions addObject:question];
            
            NSLog(@"%@", question.question);
            
            
            NSString *userInput = [inputHandling processInput]; //this passes the method from the inputHandling class
            [question answerWithInput:userInput];
            NSLog(@"you typed %@ <---", userInput);
            
            if ([userInput isEqualToString: @"quit"]) {
                break;
            }
            
            NSLog (@"The correct answer is: %ld", question.answer);
            
            
            
            if (question.right) {
                NSLog(@"your right!");
            } else {
                NSLog(@"your wrong");
                
                
                
                
                NSLog (@"%@", [scoreKeeper totalScore]);
                NSLog(@"%@", [questionManager timeOutput]);
                
            }
        }
    }
    
    
    
    
    return 0;
}
