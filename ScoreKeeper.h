//
//  ScoreKeeper.h
//  MathsDay2
//
//  Created by Ben Weinberg on 2017-01-11.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ScoreKeeper : NSObject

@property (nonatomic) NSMutableArray *mathObjects; //totals up the scores in an array


-(NSString *) totalScore;
    

@end
