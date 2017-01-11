//
//  main.m
//  MathsDay2
//
//  Created by Ben Weinberg on 2017-01-10.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandling.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
    InputHandling *inputHandling = [[InputHandling alloc] init]; //this connects to the class
    ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc]init];
    QuestionManager *questionManager = [[QuestionManager alloc] init];
        
        
    while (true) { //true= while it is true it will keep running.
                       
        AdditionQuestion *newQuestion = [[AdditionQuestion alloc] init];
        [scoreKeeper.mathObjects addObject:newQuestion];
        [questionManager.questions addObject:newQuestion];
        
        NSLog(@"%ld, %ld", newQuestion.valueOne, newQuestion.valueTwo);
            
        
        NSString *userInput = [inputHandling processInput]; //this passes the method from the inputHandling class
        [newQuestion answerWithInput:userInput];
        NSLog(@"you typed %@ <---", userInput);
            
        if ([userInput isEqualToString: @"quit"]) {
            break;
        }
            
        NSLog (@"The correct answer is: %ld", newQuestion.answer);
            
        
        
        if (newQuestion.right) {
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
