//
//  choreographyDictionary.m
//  Dictionary v1
//
//  Created by Noelle Fa-Kaji on 2/13/14.
//  Copyright (c) 2014 Noelle Fa-Kaji. All rights reserved.
//

#import "choreographyDictionary.h"

@implementation choreographyDictionary


//Shows the user what styles are available
+ (void) danceStyleMenu {
    NSLog(@"Dance styles: ChaCha");
}

//Shows the user what difficulty levels are available
+ (void) difficultyLevelMenu {
    NSLog(@"Difficulty Level: Bronze");
}

//Instance method to define the dictionaries of moves
- (void) defineDictionary
{
    //Need more work actually implementing the dictionary
    //idea: categorize as open/closed endings?
    NSArray *valuesForBasic = @[@"basic", @"newYork", @"spotTurn", @"progressiveBasics", @"timeSteps", @"fan", @"naturalTop"];
    
    NSArray *valuesForNewYork = @[@"basic"];
    
    NSArray *valuesForSpotTurn = @[@"basic"];
    
    NSArray *valuesForProgressiveBasics = @[@"basic", @"progressiveBasics"];
    
    NSArray *valuesForTimeSteps = @[@"basic", @"spotTurn", @"newYork", @"timeSteps", @"fan"];
    
    NSArray *valuesForFan = @[@"alemana", @"spotTurn", @"naturalTop"];
    
    NSArray *valuesForAlemana = @[@"basic", @"newYork"];
    
    NSArray *valuesForNaturalTop = @[@"basic"];
    
    NSDictionary *ChaChaBronzeDictionary = @{
                                             @"basic" : valuesForBasic,
                                             @"newYork" : valuesForNewYork,
                                             @"spotTurn" : valuesForSpotTurn,
                                             @"progressiveBasics" : valuesForProgressiveBasics,
                                             @"timeSteps" : valuesForTimeSteps,
                                             @"fan" : valuesForFan,
                                             @"alemana" : valuesForAlemana,
                                             @"naturalTop" : valuesForNaturalTop
                                             };
    
    if ([self.danceStyle isEqualToString: @"ChaCha"] && [self.difficultyLevel isEqualToString:@"Bronze"]) {
        self.movesDictionary = ChaChaBronzeDictionary;
    }
    
    //Add other cases for different dance styles
}


//Chooses the next move
- (NSString*) chooseAMoveAfter: (NSString*) previousMove
{
    NSArray *movesArray = [ self.movesDictionary objectForKey: previousMove];
    
    NSUInteger randomIndex = arc4random() % [movesArray count];
    
    return movesArray[randomIndex];
}


@end
