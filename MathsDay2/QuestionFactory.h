//
//  QuestionFactory.h
//  MathsDay2
//
//  Created by Ben Weinberg on 2017-01-11.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

- (Question *) generateRandomQuestion; 

@end
