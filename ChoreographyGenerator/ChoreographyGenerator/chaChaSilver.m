//
//  chaChaSilver.m
//  ChoreographyGenerator
//
//  Created by Noelle Fa-Kaji on 2/23/14.
//  Copyright (c) 2014 Noelle Fa-Kaji. All rights reserved.
//


#import "chaChaSilver.h"

@implementation chaChaSilver


/*
 * getValuesArrayForChaChaSilverMove: calls the correct method of next possible moves
 *      Input: an NSString* representing the move that is the dictionary key
 *      Output: an NSArray* (of NSString*) that are the possible next moves
 */
+ (NSArray*) getValuesArrayForChaChaSilverMove: (NSString*) move
{
    //Create the correct name of the method name for the move
    NSMutableString *arrayNameString =  [NSMutableString new];
    [arrayNameString appendString: @"valuesArrayForChaChaSilver_"];
    [arrayNameString appendString:move];
    
    //Create a selector to be able to use this string as a message
    SEL arrayName = NSSelectorFromString(arrayNameString);
    
    return [chaChaSilver performSelector:arrayName];
}

/***********************************************
 *                                             *
 *           ENUMERATED VALUE ARRAYS           *
 *                                             *
 ***********************************************/

+ (NSArray*) valuesArrayForChaChaSilver_aida
{
    NSArray *valuesForAida = @[@"alemana", @"chase", @"closedBasic", @"crossBasic", @"cubanBreakL", @"cubanBreakSplitL", @"curl", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic", @"openHipTwist", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"threeChasBack", @"threeChasForward", @"timeStepL", @"underarmTurnR"];
    return valuesForAida;
}

+ (NSArray*) valuesArrayForChaChaSilver_alemana
{
    NSArray *valuesForAlemana = @[@"closedBasic", @"closedHipTwist", @"crossBasic", @"cubanBreakL", @"cubanBreakSplitL", @"fan", @"handToHandRSP", @"newYorkLSP", @"naturalOpeningOut", @"openBasic", @"shoulderToShoulderL", @"ropeSpinning", @"sideStepLwithLF", @"sideStepRwithLF", @"spotTurnR", @"spiral", @"switchTurnR", @"thereAndBack", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForAlemana;
}

+ (NSArray*) valuesArrayForChaChaSilver_chase
{
    NSArray *valuesForChase= @[@"alemana", @"curl", @"openBasic", @"openHipTwist", @"timeStepL"];
    return valuesForChase;
}

+ (NSArray*) valuesArrayForChaChaSilver_closedBasic
{
    NSArray *valuesForClosedBasic = @[@"closedBasic", @"crossBasic", @"cubanBreakL", @"cubanBreakSplitL", @"fan", @"handToHandLSP", @"handToHandLSP", @"handToHandRSP", @"naturalTop", @"newYorkLSP", @"openBasic", @"reverseTop", @"sideStepLwithLF", @"sideStepRwithLF", @"sideStepLwithRF", @"sideStepRwithRF", @"shoulderToShoulderL", @"spotTurnL", @"spotTurnR", @"switchTurnL", @"switchTurnR", @"thereAndBack", @"threeChasBack", @"threeChasForward", @"timeStepL", @"timeStepR", @"underarmTurnL", @"underarmTurnR"];
    return valuesForClosedBasic;
}

+ (NSArray*) valuesArrayForChaChaSilver_closedHipTwist
{
    NSArray *valuesForClosedHipTwist = @[@"alemana", @"chase", @"cubanBreakL", @"cubanBreakSplitL", @"curl", @"hockeyStick", @"newYorkLSP", @"openBasic", @"openHipTwist", @"reverseTop", @"spotTurnR", @"switchTurnR", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForClosedHipTwist;
}

+ (NSArray*) valuesArrayForChaChaSilver_crossBasic
{
    NSArray *valuesForCrossBasic = @[@"alemana", @"closedBasic", @"crossBasic", @"cubanBreakL", @"cubanBreakSplitL", @"fan", @"handToHandRSP", @"hockeyStick", @"newYorkLSP", @"sideStepLwithLF", @"sideStepRwithLF", @"spiral", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"timeStepL", @"underarmTurnR"];
    return valuesForCrossBasic;
}

+ (NSArray*) valuesArrayForChaChaSilver_cubanBreakL
{
    NSArray *valuesForCubanBreakL = @[@"closedBasic", @"cubanBreakR", @"fan", @"handToHandLSP", @"newYorkRSP", @"sideStepLwithRF", @"sideStepRwithRF", @"spotTurnL", @"switchTurnL", @"timeStepR", @"underarmTurnL"];
    return valuesForCubanBreakL;
}

+ (NSArray*) valuesArrayForChaChaSilver_cubanBreakR
{
    NSArray *valuesForCubanBreakR = @[@"chase", @"closedBasic", @"crossBasic", @"cubanBreakL", @"fan", @"handToHandRSP", @"newYorkLSP", @"openHipTwist", @"sideStepLwithLF", @"sideStepRwithLF", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"timeStepL", @"underarmTurnR"];
    return valuesForCubanBreakR;
}

+ (NSArray*) valuesArrayForChaChaSilver_cubanBreakSplitL
{
    NSArray *valuesForCubanBreakSplitL = @[@"chase", @"closedBasic", @"crossBasic", @"cubanBreakSplitR", @"fan", @"handToHandRSP", @"newYorkRSP", @"openHipTwist", @"sideStepLwithLF", @"sideStepRwithLF", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"timeStepL", @"underarmTurnR"];
    return valuesForCubanBreakSplitL;
}

+ (NSArray*) valuesArrayForChaChaSilver_cubanBreakSplitR
{
    NSArray *valuesForCubanBreakSplitR = @[@"closedBasic", @"cubanBreakSplitL", @"fan", @"handToHandLSP", @"newYorkLSP", @"sideStepLwithRF", @"sideStepRwithRF", @"spotTurnL", @"switchTurnL", @"timeStepR", @"underarmTurnL"];
    return valuesForCubanBreakSplitR;
}

+ (NSArray*) valuesArrayForChaChaSilver_curl
{
    NSArray *valuesForCurl = @[@"alemana", @"chase", @"cubanBreakL", @"cubanBreakSplitL", @"curl", @"hockeyStick", @"newYorkLSP", @"openBasic", @"openHipTwist", @"reverseTop", @"spotTurnR", @"switchTurnR", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForCurl;
}

+ (NSArray*) valuesArrayForChaChaSilver_fan
{
    NSArray *valuesForFan = @[@"alemana", @"hockeyStick"];
    return valuesForFan;
}

+ (NSArray*) valuesArrayForChaChaSilver_handToHandLSP
{
    NSArray *valuesForHandToHandLSP = @[@"closedBasic", @"closedHipTwist", @"crossBasic", @"cubanBreakL", @"cubanBreakSplitL", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic", @"ropeSpinning", @"sideStepLwithLF", @"sideStepRwithLF", @"spotTurnR", @"switchTurnR", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForHandToHandLSP;
}

+ (NSArray*) valuesArrayForChaChaSilver_handToHandRSP
{
    NSArray *valuesForHandToHandRSP = @[@"aida", @"closedBasic", @"closedHipTwist", @"cubanBreakR", @"cubanBreakSplitR", @"fan", @"handToHandLSP", @"newYorkRSP", @"openBasic", @"sideStepLwithRF", @"sideStepRwithRF", @"spiral", @"spotTurnL", @"switchTurnL", @"threeChasForward", @"timeStepR", @"underarmTurnR"];
    return valuesForHandToHandRSP;
}

+ (NSArray*) valuesArrayForChaChaSilver_hockeyStick
{
    NSArray *valuesForHockeyStick = @[@"alemana", @"chase", @"cubanBreakL", @"cubanBreakSplitL", @"curl",  @"newYorkLSP", @"openBasic", @"openHipTwist", @"shoulderToShoulderL", @"spotTurnR", @"switchTurnR", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForHockeyStick;
}

+ (NSArray*) valuesArrayForChaChaSilver_naturalOpeningOut
{
    NSArray *valuesForNaturalOpeningOut = @[@"closedBasic", @"fan", @"openBasic", @"reverseTop", @"underarmTurnR"];
    return valuesForNaturalOpeningOut;
}

+ (NSArray*) valuesArrayForChaChaSilver_naturalTop
{
    NSArray *valuesForNaturalTop = @[@"closedBasic", @"closedHipTwist", @"fan", @"hockeyStick", @"naturalOpeningOut", @"openBasic", @"ropeSpinning", @"spiral"];
    return valuesForNaturalTop;
}

+ (NSArray*) valuesArrayForChaChaSilver_newYorkLSP
{
    NSArray *valuesForNewYorkLSP = @[@"closedBasic", @"closedHipTwist", @"cubanBreakR", @"cubanBreakSplitR", @"fan", @"handToHandLSP", @"newYorkRSP", @"openBasic", @"sideStepLwithRF", @"sideStepRwithRF", @"spotTurnL", @"switchTurnL", @"threeChasForward", @"timeStepR", @"underarmTurnR"];
    return valuesForNewYorkLSP;
}

+ (NSArray*) valuesArrayForChaChaSilver_newYorkRSP
{
    NSArray *valuesForNewYorkRSP = @[@"closedBasic", @"crossBasic", @"cubanBreakL", @"cubanBreakSplitL", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic", @"sideStepLwithLF", @"sideStepRwithLF", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForNewYorkRSP;
}

+ (NSArray*) valuesArrayForChaChaSilver_openBasic
{
    NSArray *valuesForOpenBasic = @[@"alemana", @"chase", @"closedBasic", @"curl", @"fan", @"naturalTop", @"openBasic",  @"openHipTwist",  @"threeChasBack", @"threeChasForward"];
    return valuesForOpenBasic;
}

+ (NSArray*) valuesArrayForChaChaSilver_openHipTwist
{
    NSArray *valuesForOpenHipTwist = @[@"alemana",
                                       @"chase",
                                       @"cubanBreakL",
                                       @"cubanBreakSplitL",
                                       @"curl",
                                       @"hockeyStick",
                                       @"newYorkLSP",
                                       @"openBasic",
                                       @"openHipTwist",
                                       @"reverseTop",
                                       @"spotTurnR"
                                       @"switchTurnR",
                                       @"threeChasForward",
                                       @"timeStepL",
                                       @"underarmTurnL"];
    return valuesForOpenHipTwist;
}

+ (NSArray*) valuesArrayForChaChaSilver_openingOutFromReverseTop
{
    NSArray *valuesForOpeningOutFromReverseTop = @[@"alemana", @"hockeyStick"];
    return valuesForOpeningOutFromReverseTop;
}

+ (NSArray*) valuesArrayForChaChaSilver_reverseTop
{
    NSArray *valuesForReverseTop= @[@"aida",
                                    @"closedBasic",
                                    @"fan",
                                    @"openBasic",
                                    @"openingOutFromReverseTop",
                                    @"spiral",
                                    @"thereAndBack"];
    return valuesForReverseTop;
}

+ (NSArray*) valuesArrayForChaChaSilver_ropeSpinning
{
    NSArray *valuesForRopeSpinning= @[@"closedBasic", @"closedHipTwist", @"crossBasic", @"cubanBreakL", @"cubanBreakSplitL",  @"fan", @"handToHandRSP", @"naturalOpeningOut", @"newYorkLSP", @"openBasic", @"ropeSpinning", @"sideStepLwithLF", @"sideStepRwithLF", @"spiral", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForRopeSpinning;
}

+ (NSArray*) valuesArrayForChaChaSilver_spiral
{
    NSArray *valuesForSpiral= @[@"alemana", @"chase", @"cubanBreakL", @"cubanBreakSplitL", @"curl", @"hockeyStick", @"newYorkLSP", @"openBasic", @"openHipTwist", @"reverseTop", @"spotTurnR", @"switchTurnR", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForSpiral;
}

+ (NSArray*) valuesArrayForChaChaSilver_shoulderToShoulderL
{
    NSArray *valuesForShoulderToShoulderL = @[@"alemana", @"closedBasic", @"closedHipTwist", @"cubanBreakR", @"cubanBreakSplitR", @"fan", @"handToHandLSP", @"newYorkRSP", @"openBasic", @"shoulderToShoulderR", @"sideStepLwithRF", @"sideStepRwithRF", @"spotTurnL", @"switchTurnL", @"threeChasForward", @"timeStepR", @"underarmTurnR" ];
    return valuesForShoulderToShoulderL;
}

+ (NSArray*) valuesArrayForChaChaSilver_shoulderToShoulderR
{
    NSArray *valuesForShoulderToShoulderR = @[@"closedBasic", @"crossBasic", @"cubanBreakL", @"cubanBreakSplitL", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic", @"shoulderToShoulderL", @"sideStepLwithLF", @"sideStepRwithLF", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForShoulderToShoulderR;
}

+ (NSArray*) valuesArrayForChaChaSilver_sideStepLwithLF
{
    NSArray *valuesForSideStepLwithLF = @[@"closedBasic", @"openBasic", @"newYorkRSP", @"spotTurnL", @"switchTurnL", @"underarmTurnR", @"shoulderToShoulderR", @"handToHandLSP", @"sideStepLwithRF", @"timeStepR", @"cubanBreakR", @"cubanBreakSplitR"];
    return valuesForSideStepLwithLF;
}

+ (NSArray*) valuesArrayForChaChaSilver_sideStepLwithRF
{
    NSArray *valuesForSideStepLwithRF = @[@"closedBasic", @"openBasic", @"thereAndBack", @"sideStepLwithLF", @"fan"];
    return valuesForSideStepLwithRF;
}

+ (NSArray*) valuesArrayForChaChaSilver_sideStepRwithLF
{
    NSArray *valuesForSideStepRwithLF = @[@"closedBasic", @"openBasic", @"underarmTurnR", @"sideStepRwithRF", @"fan"];
    return valuesForSideStepRwithLF;
}

+ (NSArray*) valuesArrayForChaChaSilver_sideStepRwithRF
{
    NSArray *valuesForSideStepRwithRF = @[@"crossBasic", @"closedBasic",  @"openBasic", @"newYorkLSP", @"spotTurnR", @"switchTurnR", @"shoulderToShoulderL", @"handToHandRSP", @"sideStepRwithLF", @"timeStepL", @"fan", @"cubanBreakR", @"cubanBreakSplitR"];
    return valuesForSideStepRwithRF;
}


+ (NSArray*) valuesArrayForChaChaSilver_spotTurnL
{
    NSArray *valuesForSpotTurnL = @[@"alemana", @"chase", @"closedBasic", @"crossBasic", @"cubanBreakL", @"cubanBreakSplitL", @"curl", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic", @"openHipTwist", @"sideStepLwithLF", @"sideStepRwithLF", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"threeChasForward", @"timeStepL", @"underarmTurnR"];
    return valuesForSpotTurnL;
}

+ (NSArray*) valuesArrayForChaChaSilver_spotTurnR
{
    NSArray *valuesForSpotTurnR = @[@"aida", @"closedBasic", @"cubanBreakR", @"cubanBreakSplitR", @"fan", @"handToHandLSP", @"newYorkRSP", @"openBasic", @"sideStepLwithRF", @"sideStepRwithRF",@"spotTurnL", @"switchTurnL", @"threeChasForward", @"timeStepR", @"underarmTurnL"];
    return valuesForSpotTurnR;
}

+ (NSArray*) valuesArrayForChaChaSilver_switchTurnL
{
    NSArray *valuesForSwitchTurnL = @[@"alemana", @"chase", @"closedBasic", @"crossBasic", @"cubanBreakL", @"cubanBreakSplitL", @"curl", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic", @"openHipTwist", @"sideStepLwithLF", @"sideStepRwithLF", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"threeChasForward", @"timeStepL", @"underarmTurnR"];
    return valuesForSwitchTurnL;
}

+ (NSArray*) valuesArrayForChaChaSilver_switchTurnR
{
    NSArray *valuesForSwitchTurnR = @[@"aida", @"closedBasic", @"cubanBreakR", @"cubanBreakSplitR",  @"fan", @"handToHandLSP", @"newYorkRSP", @"openBasic", @"sideStepLwithRF", @"sideStepRwithRF", @"spotTurnL", @"switchTurnL", @"threeChasForward", @"timeStepR", @"underarmTurnL"];
    return valuesForSwitchTurnR;
}

+ (NSArray*) valuesArrayForChaChaSilver_thereAndBack
{
    NSArray *valuesForThereAndBack = @[@"closedBasic", @"cubanBreakR", @"cubanBreakSplitR", @"fan", @"handToHandRSP", @"openBasic", @"sideStepLwithLF", @"sideStepRwithLF", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"timeStepL", @"underarmTurnL"];
    return valuesForThereAndBack;
}

+ (NSArray*) valuesArrayForChaChaSilver_threeChasBack
{
    NSArray *valuesForThreeChasBack = @[@"alemana", @"closedBasic", @"fan", @"naturalTop", @"openBasic"];
    return valuesForThreeChasBack;
}

+ (NSArray*) valuesArrayForChaChaSilver_threeChasForward
{
    NSArray *valuesForThreeChasForward =   @[@"aida", @"alemana", @"chase", @"closedBasic", @"crossBasic", @"curl", @"fan", @"handToHandLSP", @"handToHandRSP", @"newYorkLSP", @"newYorkRSP", @"openBasic", @"openHipTwist", @"sideStepLwithLF", @"sideStepRwithLF", @"sideStepLwithRF", @"sideStepRwithRF", @"spotTurnL", @"spotTurnR", @"switchTurnL", @"switchTurnR", @"thereAndBack"];
    return valuesForThreeChasForward;
}

+ (NSArray*) valuesArrayForChaChaSilver_timeStepL
{
    NSArray *valuesForTimeStepL = @[ @"closedBasic", @"cubanBreakR", @"cubanBreakSplitR", @"handToHandLSP", @"newYorkRSP", @"openBasic",  @"shoulderToShoulderR", @"sideStepLwithRF", @"sideStepRwithRF", @"spotTurnL", @"switchTurnL", @"timeStepR", @"underarmTurnR"];
    return valuesForTimeStepL;
}

+ (NSArray*) valuesArrayForChaChaSilver_timeStepR
{
    NSArray *valuesForTimeStepR = @[@"alemana", @"chase", @"closedBasic", @"crossBasic", @"cubanBreakL", @"cubanBreakSplitL", @"curl", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic", @"openHipTwist", @"shoulderToShoulderL", @"sideStepLwithLF", @"sideStepRwithLF", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"timeStepL", @"underarmTurnL"];
    return valuesForTimeStepR;
}

+ (NSArray*) valuesArrayForChaChaSilver_underarmTurnL
{
    NSArray *valuesForUnderarmTurnL = @[@"closedBasic", @"fan", @"handToHandLSP",  @"naturalTop", @"newYorkRSP", @"openBasic", @"sideStepLwithRF", @"sideStepRwithRF", @"spotTurnR", @"switchTurnR", @"timeStepR", @"underarmTurnR"];
    return valuesForUnderarmTurnL;
}

+ (NSArray*) valuesArrayForChaChaSilver_underarmTurnR
{
    NSArray *valuesForUnderarmTurnR = @[@"closedBasic", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic", @"shoulderToShoulderL", @"sideStepLwithLF", @"sideStepRwithLF", @"spotTurnL", @"switchTurnL", @"thereAndBack", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForUnderarmTurnR;
}


@end