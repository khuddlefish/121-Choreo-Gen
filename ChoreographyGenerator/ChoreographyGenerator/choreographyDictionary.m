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


/***********************************************
 *                                             *
 *           ENUMERATED DICTIONARIES           *
 *                                             *
 ***********************************************/

//---------------------------------------------
//               Cha Cha - Bronze             |
//---------------------------------------------

+ (NSDictionary*) ChaChaBronzeDictionary
{
    NSDictionary *ChaChaBronzeDictionary = @{
             @"alemana": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"alemana"],
             @"closedBasic": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"closedBasic"],
             @"closedHipTwist": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"closedHipTwist"],
             @"fan": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"fan"],
             @"handToHandLSP": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"handToHandLSP"],
             @"handToHandRSP": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"handToHandRSP"],
             @"hockeyStick": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"hockeyStick"],
             @"naturalOpeningOut": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"naturalOpeningOut"],
             @"naturalTop": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"naturalTop"],
             @"newYorkLSP": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"newYorkLSP"],
             @"newYorkRSP": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"newYorkRSP"],
             @"openBasic": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"openBasic"],
             @"shoulderToShoulderL": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"shoulderToShoulderL"],
             @"shoulderToShoulderR": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"shoulderToShoulderR"],
             @"sideStepLwithLF": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"sideStepLwithLF"],
             @"sideStepLwithRF": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"sideStepLwithRF"],
             @"sideStepRwithLF": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"sideStepRwithLF"],
             @"sideStepRwithRF": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"sideStepRwithRF"],
             @"spotTurnL": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"spotTurnL"],
             @"spotTurnR": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"spotTurnR"],
             @"switchTurnL": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"switchTurnL"],
             @"switchTurnR": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"switchTurnR"],
             @"thereAndBack": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"thereAndBack"],
             @"threeChasBack": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"threeChasBack"],
             @"threeChasForward": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"threeChasForward"],
             @"timeStepL": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"timeStepL"],
             @"timeStepR": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"timeStepR"],
             @"underarmTurnL": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"underarmTurnL"],
             @"underarmTurnR": [chaChaBronze getValuesArrayForChaChaBronzeMove:@"underarmTurnR"]
             };
    
    return ChaChaBronzeDictionary;
}



//---------------------------------------------
//               Cha Cha - Silver             |
//---------------------------------------------

+ (NSDictionary*) ChaChaSilverDictionary
{
    NSDictionary *ChaChaSilverDictionary = @{
             @"aida": [chaChaSilver getValuesArrayForChaChaSilverMove:@"aida"],
             @"alemana": [chaChaSilver getValuesArrayForChaChaSilverMove:@"alemana"],
             @"chase": [chaChaSilver getValuesArrayForChaChaSilverMove:@"chase"],
             @"closedBasic": [chaChaSilver getValuesArrayForChaChaSilverMove:@"closedBasic"],
             @"closedHipTwist": [chaChaSilver getValuesArrayForChaChaSilverMove:@"closedHipTwist"],
             @"crossBasic": [chaChaSilver getValuesArrayForChaChaSilverMove:@"crossBasic"],
             @"cubanBreakL": [chaChaSilver getValuesArrayForChaChaSilverMove:@"cubanBreakL"],
             @"cubanBreakR": [chaChaSilver getValuesArrayForChaChaSilverMove:@"cubanBreakR"],
             @"cubanBreakSplitL": [chaChaSilver getValuesArrayForChaChaSilverMove:@"cubanBreakSplitL"],
             @"cubanBreakSplitR": [chaChaSilver getValuesArrayForChaChaSilverMove:@"cubanBreakSplitR"],
             @"curl": [chaChaSilver getValuesArrayForChaChaSilverMove:@"curl"],
             @"fan": [chaChaSilver getValuesArrayForChaChaSilverMove:@"fan"],
             @"handToHandLSP": [chaChaSilver getValuesArrayForChaChaSilverMove:@"handToHandLSP"],
             @"handToHandRSP": [chaChaSilver getValuesArrayForChaChaSilverMove:@"handToHandRSP"],
             @"hockeyStick": [chaChaSilver getValuesArrayForChaChaSilverMove:@"hockeyStick"],
             @"naturalOpeningOut": [chaChaSilver getValuesArrayForChaChaSilverMove:@"naturalOpeningOut"],
             @"naturalTop": [chaChaSilver getValuesArrayForChaChaSilverMove:@"naturalTop"],
             @"newYorkLSP": [chaChaSilver getValuesArrayForChaChaSilverMove:@"newYorkLSP"],
             @"newYorkRSP": [chaChaSilver getValuesArrayForChaChaSilverMove:@"newYorkRSP"],
             @"openBasic": [chaChaSilver getValuesArrayForChaChaSilverMove:@"openBasic"],
             @"openHipTwist": [chaChaSilver getValuesArrayForChaChaSilverMove:@"openHipTwist"],
             @"openingOutFromReverseTop": [chaChaSilver getValuesArrayForChaChaSilverMove:@"openingOutFromReverseTop"],
             @"reverseTop": [chaChaSilver getValuesArrayForChaChaSilverMove:@"reverseTop"],
             @"ropeSpinning": [chaChaSilver getValuesArrayForChaChaSilverMove:@"ropeSpinning"],
             @"shoulderToShoulderL": [chaChaSilver getValuesArrayForChaChaSilverMove:@"shoulderToShoulderL"],
             @"shoulderToShoulderR": [chaChaSilver getValuesArrayForChaChaSilverMove:@"shoulderToShoulderR"],
             @"sideStepLwithLF": [chaChaSilver getValuesArrayForChaChaSilverMove:@"sideStepLwithLF"],
             @"sideStepLwithRF": [chaChaSilver getValuesArrayForChaChaSilverMove:@"sideStepLwithRF"],
             @"sideStepRwithLF": [chaChaSilver getValuesArrayForChaChaSilverMove:@"sideStepRwithLF"],
             @"sideStepRwithRF": [chaChaSilver getValuesArrayForChaChaSilverMove:@"sideStepRwithRF"],             @"spiral": [chaChaSilver getValuesArrayForChaChaSilverMove:@"spiral"],
             @"spotTurnL": [chaChaSilver getValuesArrayForChaChaSilverMove:@"spotTurnL"],
             @"spotTurnR": [chaChaSilver getValuesArrayForChaChaSilverMove:@"spotTurnR"],
             @"switchTurnL": [chaChaSilver getValuesArrayForChaChaSilverMove:@"switchTurnL"],
             @"switchTurnR": [chaChaSilver getValuesArrayForChaChaSilverMove:@"switchTurnR"],
             @"thereAndBack": [chaChaSilver getValuesArrayForChaChaSilverMove:@"thereAndBack"],
             @"threeChasBack": [chaChaSilver getValuesArrayForChaChaSilverMove:@"threeChasBack"],
             @"threeChasForward": [chaChaSilver getValuesArrayForChaChaSilverMove:@"threeChasForward"],
             @"timeStepL": [chaChaSilver getValuesArrayForChaChaSilverMove:@"timeStepL"],
             @"timeStepR": [chaChaSilver getValuesArrayForChaChaSilverMove:@"timeStepR"],
             @"underarmTurnL": [chaChaSilver getValuesArrayForChaChaSilverMove:@"underarmTurnL"],
             @"underarmTurnR": [chaChaSilver getValuesArrayForChaChaSilverMove:@"underarmTurnR"]
             };
    
    return ChaChaSilverDictionary;
}

@end
