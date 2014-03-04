//
//  chaChaBronze.m
//  ChoreographyGenerator
//
//  Created by Noelle Fa-Kaji on 2/23/14.
//  Copyright (c) 2014 Noelle Fa-Kaji. All rights reserved.
//

#import "chaChaBronze.h"

@implementation chaChaBronze


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
    
    return [chaChaBronze performSelector:arrayName];
}


/***********************************************
 *                                             *
 *           ENUMERATED VALUE ARRAYS           *
 *                                             *
 ***********************************************/

//NOTE: right now all the moves are alphabetized. Not sure if that's optimal for randomization

+ (NSArray*) valuesArrayForChaChaBronze_alemana
{
    NSArray *valuesForAlemana = @[@"closedBasic", @"closedHipTwist", @"fan", @"handToHandRSP", @"newYorkLSP", @"naturalOpeningOut", @"openBasic", @"shoulderToShoulderL", @"sideStepLwithLF", @"sideStepRwithLF", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForAlemana;
}

+ (NSArray*) valuesArrayForChaChaBronze_closedBasic
{
    NSArray *valuesForClosedBasic = @[@"closedBasic", @"fan", @"handToHandLSP", @"handToHandLSP", @"handToHandRSP", @"naturalTop", @"newYorkLSP", @"openBasic", @"sideStepLwithLF", @"sideStepRwithLF", @"sideStepLwithRF", @"sideStepRwithRF", @"shoulderToShoulderL", @"spotTurnL", @"spotTurnR", @"switchTurnL", @"switchTurnR", @"thereAndBack", @"threeChasBack", @"threeChasForward", @"timeStepL", @"timeStepR", @"underarmTurnL", @"underarmTurnR"];
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
    NSArray *valuesForHandToHandLSP = @[@"closedBasic", @"closedHipTwist", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic", @"sideStepLwithLF", @"sideStepRwithLF", @"spotTurnR", @"switchTurnR", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForHandToHandLSP;
}

+ (NSArray*) valuesArrayForChaChaBronze_handToHandRSP
{
    NSArray *valuesForHandToHandRSP = @[@"closedBasic", @"closedHipTwist", @"fan", @"handToHandLSP", @"newYorkRSP", @"openBasic", @"sideStepLwithRF", @"sideStepRwithRF", @"spotTurnL", @"switchTurnL", @"threeChasForward", @"timeStepR", @"underarmTurnR"];
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
    NSArray *valuesForNewYorkLSP = @[@"closedBasic", @"closedHipTwist", @"fan", @"handToHandLSP", @"newYorkRSP",  @"openBasic", @"sideStepLwithRF", @"sideStepRwithRF", @"spotTurnL", @"switchTurnL", @"threeChasForward", @"timeStepR", @"underarmTurnR"];
    return valuesForNewYorkLSP;
}

+ (NSArray*) valuesArrayForChaChaBronze_newYorkRSP
{
    NSArray *valuesForNewYorkRSP = @[@"closedBasic", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic", @"sideStepLwithLF", @"sideStepRwithLF", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForNewYorkRSP;
}

+ (NSArray*) valuesArrayForChaChaBronze_openBasic
{
    NSArray *valuesForOpenBasic = @[@"alemana", @"closedBasic", @"fan", @"naturalTop", @"openBasic", @"threeChasBack", @"threeChasForward"];
    return valuesForOpenBasic;
}

+ (NSArray*) valuesArrayForChaChaBronze_shoulderToShoulderL
{
    NSArray *valuesForShoulderToShoulderL = @[@"alemana", @"closedBasic", @"closedHipTwist",                                              @"fan", @"handToHandLSP", @"newYorkRSP", @"openBasic", @"shoulderToShoulderR", @"sideStepLwithRF", @"sideStepRwithRF", @"spotTurnL", @"switchTurnL", @"threeChasForward", @"timeStepR", @"underarmTurnR" ];
    return valuesForShoulderToShoulderL;
}

+ (NSArray*) valuesArrayForChaChaBronze_shoulderToShoulderR
{
    NSArray *valuesForShoulderToShoulderR = @[@"closedBasic", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic", @"shoulderToShoulderL", @"sideStepLwithLF", @"sideStepRwithLF", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"threeChasForward", @"timeStepL", @"underarmTurnL" ];
    return valuesForShoulderToShoulderR;
}

+ (NSArray*) valuesArrayForChaChaBronze_sideStepLwithLF
{
    NSArray *valuesForSideStepLwithLF = @[@"closedBasic", @"openBasic", @"newYorkRSP", @"spotTurnL", @"switchTurnL", @"underarmTurnR", @"shoulderToShoulderR", @"handToHandLSP", @"sideStepLwithRF", @"timeStepR"];
    return valuesForSideStepLwithLF;
}

+ (NSArray*) valuesArrayForChaChaBronze_sideStepLwithRF
{
    NSArray *valuesForSideStepLwithRF = @[@"closedBasic", @"openBasic", @"thereAndBack", @"sideStepLwithLF", @"fan"];
    return valuesForSideStepLwithRF;
}

+ (NSArray*) valuesArrayForChaChaBronze_sideStepRwithLF
{
    NSArray *valuesForSideStepRwithLF = @[@"closedBasic", @"openBasic", @"underarmTurnR", @"sideStepRwithRF", @"fan"];
    return valuesForSideStepRwithLF;
}

+ (NSArray*) valuesArrayForChaChaBronze_sideStepRwithRF
{
    NSArray *valuesForSideStepRwithRF = @[@"closedBasic",  @"openBasic", @"newYorkLSP", @"spotTurnR", @"switchTurnR", @"shoulderToShoulderL", @"handToHandRSP", @"sideStepRwithLF", @"timeStepL", @"fan"];
    return valuesForSideStepRwithRF;
}

+ (NSArray*) valuesArrayForChaChaBronze_spotTurnL
{
    NSArray *valuesForSpotTurnL = @[@"alemana", @"closedBasic", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic", @"sideStepLwithLF", @"sideStepRwithLF", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"threeChasForward", @"timeStepL", @"underarmTurnR"];
    return valuesForSpotTurnL;
}

+ (NSArray*) valuesArrayForChaChaBronze_spotTurnR
{
    NSArray *valuesForSpotTurnR = @[@"closedBasic", @"fan", @"handToHandLSP", @"newYorkRSP", @"openBasic", @"sideStepLwithRF", @"sideStepRwithRF", @"spotTurnL", @"switchTurnL", @"threeChasForward", @"timeStepR", @"underarmTurnL"];
    return valuesForSpotTurnR;
}

+ (NSArray*) valuesArrayForChaChaBronze_switchTurnL
{
    NSArray *valuesForSwitchTurnL = @[@"alemana", @"closedBasic", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic", @"sideStepLwithLF", @"sideStepRwithLF", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"threeChasForward", @"timeStepL", @"underarmTurnR"];
    return valuesForSwitchTurnL;
}

+ (NSArray*) valuesArrayForChaChaBronze_switchTurnR
{
    NSArray *valuesForSwitchTurnR = @[@"closedBasic", @"fan", @"handToHandLSP", @"newYorkRSP", @"openBasic", @"sideStepLwithRF", @"sideStepRwithRF", @"spotTurnL", @"switchTurnL", @"threeChasForward", @"timeStepR", @"underarmTurnL"];
    return valuesForSwitchTurnR;
}

+ (NSArray*) valuesArrayForChaChaBronze_thereAndBack
{
    NSArray *valuesForThereAndBack = @[@"closedBasic", @"fan", @"handToHandRSP", @"openBasic", @"sideStepLwithLF", @"sideStepRwithLF", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"timeStepL", @"underarmTurnL"];
    return valuesForThereAndBack;
}

+ (NSArray*) valuesArrayForChaChaBronze_threeChasBack
{
    NSArray *valuesForThreeChasBack = @[@"alemana", @"closedBasic", @"fan", @"naturalTop", @"openBasic"];
    return valuesForThreeChasBack;
}

+ (NSArray*) valuesArrayForChaChaBronze_threeChasForward
{
    NSArray *valuesForThreeChasForward =   @[@"alemana", @"closedBasic", @"fan", @"handToHandLSP", @"handToHandRSP", @"newYorkLSP", @"newYorkRSP", @"openBasic", @"sideStepLwithLF", @"sideStepRwithLF", @"sideStepLwithRF", @"sideStepRwithRF", @"spotTurnL", @"spotTurnR", @"switchTurnL", @"switchTurnR", @"thereAndBack"];
    return valuesForThreeChasForward;
}

+ (NSArray*) valuesArrayForChaChaBronze_timeStepL
{
    NSArray *valuesForTimeStepL = @[ @"closedBasic", @"handToHandLSP", @"newYorkRSP", @"openBasic",  @"shoulderToShoulderR", @"sideStepLwithRF", @"sideStepRwithRF", @"spotTurnL", @"switchTurnL", @"timeStepR", @"underarmTurnR"];
    return valuesForTimeStepL;
}

+ (NSArray*) valuesArrayForChaChaBronze_timeStepR
{
    NSArray *valuesForTimeStepR = @[@"alemana", @"closedBasic", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic",  @"shoulderToShoulderL", @"sideStepLwithLF", @"sideStepRwithLF", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"timeStepL", @"underarmTurnL"];
    return valuesForTimeStepR;
}

+ (NSArray*) valuesArrayForChaChaBronze_underarmTurnL
{
    NSArray *valuesForUnderarmTurnL = @[@"closedBasic", @"fan", @"handToHandLSP",  @"naturalTop", @"newYorkRSP", @"openBasic", @"sideStepLwithRF", @"sideStepRwithRF", @"spotTurnR", @"switchTurnR", @"timeStepR", @"underarmTurnR"];
    return valuesForUnderarmTurnL;
}

+ (NSArray*) valuesArrayForChaChaBronze_underarmTurnR
{
    NSArray *valuesForUnderarmTurnR = @[@"closedBasic", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic", @"shoulderToShoulderL", @"sideStepLwithLF", @"sideStepRwithLF", @"spotTurnL", @"switchTurnL", @"thereAndBack", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForUnderarmTurnR;
}


@end
