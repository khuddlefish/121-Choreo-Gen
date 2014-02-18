//
//  choreographyDictionary.m
//  Dictionary v1
//
//  Created by Noelle Fa-Kaji on 2/13/14.
//  Copyright (c) 2014 Noelle Fa-Kaji. All rights reserved.
//

#import "choreographyDictionary.h"

@implementation choreographyDictionary


/*
 * danceStyleMenu: Shows the user what styles are available and proper formatting.
 *      Input: none
 *      Output: none
 */
+ (void) danceStyleMenu {
    NSLog(@"Dance styles: ChaCha");
//    NSLog(@"Dance styles: Waltz");
}


/*
 * difficultyLevelMenu: Shows the user what difficulty levels are available and proper formatting. 
 *      Input: none
 *      Output: none
 */
+ (void) difficultyLevelMenu {
    NSLog(@"Difficulty Level: Bronze");
//    NSLog(@"Difficulty Level: Silver");
//    NSLog(@"Difficulty Level: Gold");
}


/*
 * setMovesDictionary: sets the movesDictionary property to the correct dictionary
 *      Input: none, but depends on the properties self.danceStyle and self.difficultyLevel
 *      Output: none, but updates self.movesDictionary
 */
- (void) setMovesDictionary
{
    //Create the correct name of the method name for the dictionary
    NSMutableString *dictionaryNameString =  [NSMutableString new];
    [dictionaryNameString appendString: self.danceStyle];
    [dictionaryNameString appendString: self.difficultyLevel];
    [dictionaryNameString appendString: @"Dictionary"];
    
    //Create a selector to be able to use this string as a message
    SEL dictionaryName = NSSelectorFromString(dictionaryNameString);
    
    NSDictionary *dictionary = [choreographyDictionary performSelector:dictionaryName];

    self.movesDictionary = dictionary;
}


/***********************************************
 *                                             *
 *           ENUMERATED DICTIONARIES           *
 *                                             *
 ***********************************************/
+ (NSDictionary*) ChaChaBronzeDictionary
{
    NSDictionary *ChaChaBronzeDictionary = @{
         @"alemana": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"alemana"],
         @"closedBasic": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"closedBasic"],
         @"closedHipTwist": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"closedHipTwist"],
         @"fan": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"fan"],
         @"handToHandLSP": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"handToHandLSP"],
         @"handToHandRSP": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"handToHandRSP"],
         @"hockeyStick": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"hockeyStick"],
         @"naturalOpeningOut": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"naturalOpeningOut"],
         @"naturalTop": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"naturalTop"],
         @"newYorkLSP": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"newYorkLSP"],
         @"newYorkRSP": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"newYorkRSP"],
         @"openBasic": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"openBasic"],
         @"shoulderToShoulderL": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"shoulderToShoulderL"],
         @"shoulderToShoulderR": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"shoulderToShoulderR"],
         @"sideStep": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"sideStep"],
         @"spotTurnL": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"spotTurnL"],
         @"spotTurnR": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"spotTurnR"],
         @"switchTurnL": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"switchTurnL"],
         @"switchTurnR": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"switchTurnR"],
         @"thereAndBack": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"thereAndBack"],
         @"threeChasBack": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"threeChasBack"],
         @"threeChasForward": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"threeChasForward"],
         @"timeStepL": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"timeStepL"],
         @"timeStepR": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"timeStepR"],
         @"underarmTurnL": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"underarmTurnL"],
         @"underarmTurnR": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"underarmTurnR"]
         };
    
    return ChaChaBronzeDictionary;
}

/*
 * getValuesArrayForChaChaBronzeMove: calls the correct method of next possible moves
 *      Input: an NSString* representing the move that is the dictionary key
 *      Output: an NSArray* (of NSString*) that are the possible next moves
 */
+ (NSArray*) getValuesArrayForChaChaBronzeMove: (NSString*) move
{
    //Create the correct name of the method name for the move
    NSMutableString *arrayNameString =  [NSMutableString new];
    [arrayNameString appendString: @"valuesArrayForChaChaBronze_"];
    [arrayNameString appendString:move];
    
    //Create a selector to be able to use this string as a message
    SEL arrayName = NSSelectorFromString(arrayNameString);
    
    return [choreographyDictionary performSelector:arrayName];
}


/***********************************************
 *                                             *
 *           ENUMERATED VALUE ARRAYS           *
 *                                             *
 ***********************************************/

//NOTE: right now all the moves are alphabetized. Not sure if that's optimal for randomization

//---------------------------------------------
//               Cha Cha - Bronze             |
//---------------------------------------------

+ (NSArray*) valuesArrayForChaChaBronze_alemana
{
    NSArray *valuesForAlemana = @[@"closedBasic", @"closedHipTwist", @"fan", @"handToHandRSP", @"newYorkLSP", @"naturalOpeningOut", @"openBasic", @"shoulderToShoulderL", @"sideStep", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForAlemana;
}

+ (NSArray*) valuesArrayForChaChaBronze_closedBasic
{
    NSArray *valuesForClosedBasic = @[@"closedBasic", @"fan", @"handToHandLSP", @"handToHandLSP", @"handToHandRSP", @"naturalTop", @"newYorkLSP", @"openBasic", @"sideStep", @"shoulderToShoulderL", @"spotTurnL", @"spotTurnR", @"switchTurnL", @"switchTurnR", @"thereAndBack", @"threeChasBack", @"threeChasForward", @"timeStepL", @"timeStepR", @"underarmTurnL", @"underarmTurnR"];
    return valuesForClosedBasic;
}

+ (NSArray*) valuesArrayForChaChaBronze_closedHipTwist
{
    NSArray *valuesForClosedHipTwist = @[@"alemana", @"hockeyStick", @"newYorkLSP", @"openBasic", @"spotTurnR", @"switchTurnR", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForClosedHipTwist;
}

+ (NSArray*) valuesArrayForChaChaBronze_fan
{
    NSArray *valuesForFan = @[@"alemana", @"hockeyStick"];
    return valuesForFan;
}

+ (NSArray*) valuesArrayForChaChaBronze_handToHandLSP
{
    NSArray *valuesForHandToHandLSP = @[@"closedBasic", @"closedHipTwist", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic", @"sideStep", @"spotTurnR", @"switchTurnR", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForHandToHandLSP;
}

+ (NSArray*) valuesArrayForChaChaBronze_handToHandRSP
{
    NSArray *valuesForHandToHandRSP = @[@"closedBasic", @"closedHipTwist", @"fan", @"handToHandLSP", @"newYorkRSP", @"openBasic", @"sideStep", @"spotTurnL", @"switchTurnL", @"threeChasForward", @"timeStepR", @"underarmTurnR"];
    return valuesForHandToHandRSP;
}

+ (NSArray*) valuesArrayForChaChaBronze_hockeyStick
{
    NSArray *valuesForHockeyStick = @[@"alemana", @"newYorkLSP", @"openBasic", @"shoulderToShoulderL",   @"spotTurnR", @"switchTurnR", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForHockeyStick;
}

+ (NSArray*) valuesArrayForChaChaBronze_naturalOpeningOut
{
    NSArray *valuesForNaturalOpeningOut = @[@"closedBasic", @"fan", @"openBasic", @"underarmTurnR"];
    return valuesForNaturalOpeningOut;
}

+ (NSArray*) valuesArrayForChaChaBronze_naturalTop
{
    NSArray *valuesForNaturalTop = @[@"closedBasic", @"closedHipTwist", @"fan", @"hockeyStick", @"naturalOpeningOut", @"openBasic"];
    return valuesForNaturalTop;
}

+ (NSArray*) valuesArrayForChaChaBronze_newYorkLSP
{
    NSArray *valuesForNewYorkLSP = @[@"closedBasic", @"closedHipTwist", @"fan", @"handToHandLSP", @"newYorkRSP",  @"openBasic", @"sideStep", @"spotTurnL", @"switchTurnL", @"threeChasForward", @"timeStepR", @"underarmTurnR"];
    return valuesForNewYorkLSP;
}

+ (NSArray*) valuesArrayForChaChaBronze_newYorkRSP
{
    NSArray *valuesForNewYorkRSP = @[@"closedBasic", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic", @"sideStep", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForNewYorkRSP;
}

+ (NSArray*) valuesArrayForChaChaBronze_openBasic
{
    NSArray *valuesForOpenBasic = @[@"alemana", @"closedBasic", @"fan", @"naturalTop", @"openBasic", @"threeChasBack", @"threeChasForward"];
    return valuesForOpenBasic;
}

+ (NSArray*) valuesArrayForChaChaBronze_shoulderToShoulderL
{
    NSArray *valuesForShoulderToShoulderL = @[@"alemana", @"closedBasic", @"closedHipTwist",                                              @"fan", @"handToHandLSP", @"newYorkRSP", @"openBasic", @"shoulderToShoulderR", @"sideStep", @"spotTurnL", @"switchTurnL", @"threeChasForward", @"timeStepR", @"underarmTurnR" ];
    return valuesForShoulderToShoulderL;
}

+ (NSArray*) valuesArrayForChaChaBronze_shoulderToShoulderR
{
    NSArray *valuesForShoulderToShoulderR = @[@"closedBasic", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic", @"shoulderToShoulderL", @"sideStep", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"threeChasForward", @"timeStepL", @"underarmTurnL" ];
    return valuesForShoulderToShoulderR;
}

+ (NSArray*) valuesArrayForChaChaBronze_sideStep
{
    NSArray *valuesForSideStep = @[@"alemana", @"closedBasic", @"closedHipTwist", @"fan", @"handToHand", @"hockeyStick", @"naturalOpeningOut", @"naturalTop", @"newYorkRSP", @"newYorkLSP", @"openBasic", @"shoulderToShoulder", @"sideStep", @"spotTurn", @"switchTurn", @"threeChasBack", @"threeChasForward", @"timeStep"];
    return valuesForSideStep;
}

+ (NSArray*) valuesArrayForChaChaBronze_spotTurnL
{
    NSArray *valuesForSpotTurnL = @[@"alemana", @"closedBasic", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic", @"sideStep", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"threeChasForward", @"timeStepL", @"underarmTurnR"];
    return valuesForSpotTurnL;
}

+ (NSArray*) valuesArrayForChaChaBronze_spotTurnR
{
    NSArray *valuesForSpotTurnR = @[@"closedBasic", @"fan", @"handToHandLSP", @"newYorkRSP", @"openBasic", @"sideStep", @"spotTurnL", @"switchTurnL", @"threeChasForward", @"timeStepR", @"underarmTurnL"];
    return valuesForSpotTurnR;
}

+ (NSArray*) valuesArrayForChaChaBronze_switchTurnL
{
    NSArray *valuesForSwitchTurnL = @[@"alemana", @"closedBasic", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic", @"sideStep", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"threeChasForward", @"timeStepL", @"underarmTurnR"];
    return valuesForSwitchTurnL;
}

+ (NSArray*) valuesArrayForChaChaBronze_switchTurnR
{
    NSArray *valuesForSwitchTurnR = @[@"closedBasic", @"fan", @"handToHandLSP", @"newYorkRSP", @"openBasic", @"sideStep", @"spotTurnL", @"switchTurnL", @"threeChasForward", @"timeStepR", @"underarmTurnL"];
    return valuesForSwitchTurnR;
}

+ (NSArray*) valuesArrayForChaChaBronze_thereAndBack
{
    NSArray *valuesForThereAndBack = @[@"closedBasic", @"fan", @"handToHandRSP", @"openBasic", @"sideStep", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"timeStepL", @"underarmTurnL"];
    return valuesForThereAndBack;
}

+ (NSArray*) valuesArrayForChaChaBronze_threeChasBack
{
    NSArray *valuesForThreeChasBack = @[@"alemana", @"closedBasic", @"fan", @"naturalTop", @"openBasic"];
    return valuesForThreeChasBack;
}

+ (NSArray*) valuesArrayForChaChaBronze_threeChasForward
{
    NSArray *valuesForThreeChasForward =   @[@"alemana", @"closedBasic", @"fan", @"handToHandLSP", @"handToHandRSP", @"newYorkLSP", @"newYorkRSP", @"openBasic", @"sideStep", @"spotTurnL", @"spotTurnR", @"switchTurnL", @"switchTurnR", @"thereAndBack"];
    return valuesForThreeChasForward;
}

+ (NSArray*) valuesArrayForChaChaBronze_timeStepL
{
    NSArray *valuesForTimeStepL = @[ @"closedBasic", @"handToHandLSP", @"newYorkRSP", @"openBasic",  @"shoulderToShoulderR", @"sideStep", @"spotTurnL", @"switchTurnL", @"timeStepR", @"underarmTurnR"];
    return valuesForTimeStepL;
}

+ (NSArray*) valuesArrayForChaChaBronze_timeStepR
{
    NSArray *valuesForTimeStepR = @[@"alemana", @"closedBasic", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic",  @"shoulderToShoulderL", @"sideStep", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"timeStepL", @"underarmTurnL"];
    return valuesForTimeStepR;
}

+ (NSArray*) valuesArrayForChaChaBronze_underarmTurnL
{
    NSArray *valuesForUnderarmTurnL = @[@"closedBasic", @"fan", @"handToHandLSP",  @"naturalTop", @"newYorkRSP", @"openBasic", @"sideStep", @"spotTurnR", @"switchTurnR", @"timeStepR", @"underarmTurnR"];
    return valuesForUnderarmTurnL;
}

+ (NSArray*) valuesArrayForChaChaBronze_underarmTurnR
{
    NSArray *valuesForUnderarmTurnR = @[@"closedBasic", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic", @"shoulderToShoulderL", @"sideStep", @"spotTurnL", @"switchTurnL", @"thereAndBack", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForUnderarmTurnR;
}

/*
 * chooseAMoveAfter: chooses the next move for the choreography
 *      Input: a NSString* representing the previous move
 *      Output: a NSString* representing the next move chosen
 */
- (NSString*) chooseAMoveAfter: (NSString*) previousMove
{
    NSArray *movesArray = [self.movesDictionary objectForKey: previousMove];
    
    NSUInteger randomIndex = arc4random() % [movesArray count];
    
    return movesArray[randomIndex];
}

@end
