//
//  inputHandling.m
//  MathsDay2
//
//  Created by Ben Weinberg on 2017-01-11.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import "InputHandling.h"

@implementation InputHandling

-(NSString *)processInput {
    char input [255]; //input can be called whatever you want
    fgets (input,255, stdin);
    NSString *userInput = [NSString stringWithCString:input encoding:NSUTF8StringEncoding];
    NSCharacterSet *characterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    userInput = [userInput stringByTrimmingCharactersInSet: characterSet];
    //userInput is the instance. So when you are adding a method to it you need to recall the instance userInput.  You bring back userInput becaue the source of the info is from the original userInput pointer.
    
    //           userInput = [userInput stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    
    //this ensures that when you add text it does not create a new lin. Also the userInput variable here is just a new varaible overriding the previous one so that the varaible creates a string based on the method which the inital pointer was using.
    
    return userInput;
}

@end
