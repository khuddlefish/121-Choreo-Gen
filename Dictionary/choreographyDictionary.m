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

//---------------------------------------------
//               Cha Cha - Bronze             |
//---------------------------------------------

+ (NSArray*) valuesArrayForChaChaBronze_alemana
{
    NSArray *valuesForAlemana = @[@""];
    return valuesForAlemana;
}

+ (NSArray*) valuesArrayForChaChaBronze_closedBasic
{
    NSArray *valuesForClosedBasic = @[@"timeStep", @"openBasic", @"closedBasic", @"newYorkLSP", @"spotTurn", @"switchTurn", @"shoulderToShoulder", @"sideStep", @"handToHand", @"thereAndBack",@"fan", @"threeChasBack", @"threeChasForward", @"naturalTop"];
    return valuesForClosedBasic;
}

+ (NSArray*) valuesArrayForChaChaBronze_closedHipTwist
{
    NSArray *valuesForClosedHipTwist = @[@""];
    return valuesForClosedHipTwist;
}

+ (NSArray*) valuesArrayForChaChaBronze_fan
{
    NSArray *valuesForFan = @[@""];
    return valuesForFan;
}

+ (NSArray*) valuesArrayForChaChaBronze_handToHand
{
    NSArray *valuesForHandToHand = @[@""];
    return valuesForHandToHand;
}

+ (NSArray*) valuesArrayForChaChaBronze_hockeyStick
{
    NSArray *valuesForHockeyStick = @[@""];
    return valuesForHockeyStick;
}

+ (NSArray*) valuesArrayForChaChaBronze_naturalOpeningOut
{
    NSArray *valuesForNaturalOpeningOut = @[@""];
    return valuesForNaturalOpeningOut;
}

+ (NSArray*) valuesArrayForChaChaBronze_naturalTop
{
    NSArray *valuesForNaturalTop = @[@""];
    return valuesForNaturalTop;
}

+ (NSArray*) valuesArrayForChaChaBronze_newYorkLSP
{
    NSArray *valuesForNewYorkLSP = @[@"newYorkRSP", @"spotTurn", @"switchTurn", @"closedBasic", @"openBasic", @"handToHand", @"sideStep", @"timeStep", @"fan", @"closedHipTwist", @"threeChasForward"];
    return valuesForNewYorkLSP;
}

+ (NSArray*) valuesArrayForChaChaBronze_newYorkRSP
{
    NSArray *valuesForNewYorkRSP = @[@"newYorkLSP", @"spotTurn", @"switchTurn", @"closedBasic", @"openBasic", @"handToHand", @"sideStep", @"thereAndBack", @"timeStep", @"fan", @"threeChasForward"];
    return valuesForNewYorkRSP;
}

+ (NSArray*) valuesArrayForChaChaBronze_openBasic
{
    NSArray *valuesForOpenBasic = @[@"openBasic", @"closedBasic", @"fan", @"threeChasBack", @"threeChasForward", @"naturalTop", @"alemana"];
    return valuesForOpenBasic;
}

+ (NSArray*) valuesArrayForChaChaBronze_shoulderToShoulder
{
    NSArray *valuesForShoulderToShoulder = @[@""];
    return valuesForShoulderToShoulder;
}

+ (NSArray*) valuesArrayForChaChaBronze_sideStep
{
    NSArray *valuesForSideStep = @[@""];
    return valuesForSideStep;
}

+ (NSArray*) valuesArrayForChaChaBronze_spotTurn
{
    NSArray *valuesForSpotTurn = @[@""];
    return valuesForSpotTurn;
}

+ (NSArray*) valuesArrayForChaChaBronze_switchTurn
{
    NSArray *valuesForSwitchTurn = @[@""];
    return valuesForSwitchTurn;
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

+ (NSArray*) valuesArrayForChaChaBronze_timeStep
{
    NSArray *valuesForTimeStep = @[@""];
    return valuesForTimeStep;
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
