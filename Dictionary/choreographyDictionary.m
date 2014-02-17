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
}


/*
 * difficultyLevelMenu: Shows the user what difficulty levels are available and proper formatting. 
 *      Input: none
 *      Output: none
 */
+ (void) difficultyLevelMenu {
    NSLog(@"Difficulty Level: Bronze");
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
         @"openBasic": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"openBasic"],
         @"closedBasic": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"closedBasic"],
         @"newYorkRSP": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"newYorkRSP"],
         @"newYorkLSP": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"newYorkLSP"],
         @"spotTurn": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"spotTurn"],
         @"switchTurn": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"switchTurn"],
         @"shoulderToShoulder": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"shoulderToShoulder"],
         @"handToHand": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"handToHand"],
         @"threeChasBack": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"threeChasBack"],
         @"threeChasForward": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"threeChasForward"],
         @"sideStep": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"sideStep"],
         @"thereAndBack": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"thereAndBack"],
         //@"timeStepLF": valuesForTimeStepLF,
         @"fan": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"fan"],
         @"alemana": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"alemana"],
         @"hockeyStick": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"hockeyStick"],
         @"naturalTop": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"naturalTop"],
         @"naturalOpeningOut": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"naturalOpeningOut"],
         @"closedHipTwist": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"closedHipTwist"]
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
    NSArray *valuesForSpotTurnL = @[@""];
    return valuesForSpotTurnL;
}

+ (NSArray*) valuesArrayForChaChaBronze_spotTurnR
{
    NSArray *valuesForSpotTurnR = @[@""];
    return valuesForSpotTurnR;
}

+ (NSArray*) valuesArrayForChaChaBronze_switchTurnL
{
    NSArray *valuesForSwitchTurnL = @[@""];
    return valuesForSwitchTurnL;
}

+ (NSArray*) valuesArrayForChaChaBronze_switchTurnR
{
    NSArray *valuesForSwitchTurnR = @[@""];
    return valuesForSwitchTurnR;
}

+ (NSArray*) valuesArrayForChaChaBronze_thereAndBack
{
    NSArray *valuesForThereAndBack = @[@""];
    return valuesForThereAndBack;
}

+ (NSArray*) valuesArrayForChaChaBronze_threeChasBack
{
    NSArray *valuesForThreeChasBack = @[@""];
    return valuesForThreeChasBack;
}

+ (NSArray*) valuesArrayForChaChaBronze_threeChasForward
{
    NSArray *valuesForThreeChasForward = @[@""];
    return valuesForThreeChasForward;
}

+ (NSArray*) valuesArrayForChaChaBronze_timeStepL
{
    NSArray *valuesForTimeStepL = ;
    return valuesForTimeStepL;
}

+ (NSArray*) valuesArrayForChaChaBronze_timeStepR
{
    NSArray *valuesForTimeStepR = ;
    return valuesForTimeStepR;
}

+ (NSArray*) valuesArrayForChaChaBronze_underarmTurnL
{
    NSArray *valuesForUnderarmTurnL = ;
    return valuesForUnderarmTurnL;
}

+ (NSArray*) valuesArrayForChaChaBronze_underarmTurnR
{
    NSArray *valuesForUnderarmTurnR = ;
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
