//
//  QuestionManager.h
//  MathsDay2
//
//  Created by Ben Weinberg on 2017-01-11.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QuestionManager.h"

@interface QuestionManager : NSObject

@property (nonatomic, strong) NSMutableArray *questions;

- (NSString*) timeOutput;
- (NSInteger) totalTime;

@end
