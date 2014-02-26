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
    NSArray *valuesForAlemana = @[@"closedBasic", @"closedHipTwist", @"fan", @"handToHandRSP", @"newYorkLSP", @"naturalOpeningOut", @"openBasic", @"shoulderToShoulderL", @"sideStep", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForAlemana;
}

+ (NSArray*) valuesArrayForChaChaSilver_chase
{
    NSArray *valuesForChase= @[];
    return valuesForChase;
}

+ (NSArray*) valuesArrayForChaChaSilver_closedBasic
{
    NSArray *valuesForClosedBasic = @[@"closedBasic", @"fan", @"handToHandLSP", @"handToHandLSP", @"handToHandRSP", @"naturalTop", @"newYorkLSP", @"openBasic", @"sideStep", @"shoulderToShoulderL", @"spotTurnL", @"spotTurnR", @"switchTurnL", @"switchTurnR", @"thereAndBack", @"threeChasBack", @"threeChasForward", @"timeStepL", @"timeStepR", @"underarmTurnL", @"underarmTurnR"];
    return valuesForClosedBasic;
}

+ (NSArray*) valuesArrayForChaChaSilver_closedHipTwist
{
    NSArray *valuesForClosedHipTwist = @[@"alemana", @"hockeyStick", @"newYorkLSP", @"openBasic", @"spotTurnR", @"switchTurnR", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForClosedHipTwist;
}

+ (NSArray*) valuesArrayForChaChaSilver_crossBasic
{
    NSArray *valuesForCrossBasic= @[];
    return valuesForCrossBasic;
}

+ (NSArray*) valuesArrayForChaChaSilver_cubanBreakL
{
    NSArray *valuesForcubanBreakL= @[];
    return valuesForcubanBreakL;
}

+ (NSArray*) valuesArrayForChaChaSilver_cubanBreakR
{
    NSArray *valuesForCubanBreakR= @[];
    return valuesForCubanBreakR;
}

+ (NSArray*) valuesArrayForChaChaSilver_cubanBreakSplitL
{
    NSArray *valuesForCubanBreakSplitL= @[];
    return valuesForCubanBreakSplitL;
}

+ (NSArray*) valuesArrayForChaChaSilver_cubanBreakSplitR
{
    NSArray *valuesForCubanBreakSplitR= @[];
    return valuesForCubanBreakSplitR;
}

+ (NSArray*) valuesArrayForChaChaSilver_curl
{
    NSArray *valuesForCurl= @[@"alemana", @"chase", @"cubanBreakL", @"cubanBreakSplitL", @"curl", @"hockeyStick", @"newYorkLSP", @"openBasic", @"openHipTwist", @"reverseTop", @"spotTurnR", @"switchTurnR", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForCurl;
}

+ (NSArray*) valuesArrayForChaChaSilver_fan
{
    NSArray *valuesForFan = @[@"alemana", @"hockeyStick"];
    return valuesForFan;
}

+ (NSArray*) valuesArrayForChaChaSilver_handToHandLSP
{
    NSArray *valuesForHandToHandLSP = @[@"closedBasic", @"closedHipTwist", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic", @"sideStep", @"spotTurnR", @"switchTurnR", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForHandToHandLSP;
}

+ (NSArray*) valuesArrayForChaChaSilver_handToHandRSP
{
    NSArray *valuesForHandToHandRSP = @[@"closedBasic", @"closedHipTwist", @"fan", @"handToHandLSP", @"newYorkRSP", @"openBasic", @"sideStep", @"spotTurnL", @"switchTurnL", @"threeChasForward", @"timeStepR", @"underarmTurnR"];
    return valuesForHandToHandRSP;
}

+ (NSArray*) valuesArrayForChaChaSilver_hockeyStick
{
    NSArray *valuesForHockeyStick = @[@"alemana", @"newYorkLSP", @"openBasic", @"shoulderToShoulderL",   @"spotTurnR", @"switchTurnR", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForHockeyStick;
}

+ (NSArray*) valuesArrayForChaChaSilver_naturalOpeningOut
{
    NSArray *valuesForNaturalOpeningOut = @[@"closedBasic", @"fan", @"openBasic", @"underarmTurnR"];
    return valuesForNaturalOpeningOut;
}

+ (NSArray*) valuesArrayForChaChaSilver_naturalTop
{
    NSArray *valuesForNaturalTop = @[@"closedBasic", @"closedHipTwist", @"fan", @"hockeyStick", @"naturalOpeningOut", @"openBasic"];
    return valuesForNaturalTop;
}

+ (NSArray*) valuesArrayForChaChaSilver_newYorkLSP
{
    NSArray *valuesForNewYorkLSP = @[@"closedBasic", @"closedHipTwist", @"fan", @"handToHandLSP", @"newYorkRSP",  @"openBasic", @"sideStep", @"spotTurnL", @"switchTurnL", @"threeChasForward", @"timeStepR", @"underarmTurnR"];
    return valuesForNewYorkLSP;
}

+ (NSArray*) valuesArrayForChaChaSilver_newYorkRSP
{
    NSArray *valuesForNewYorkRSP = @[@"closedBasic", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic", @"sideStep", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForNewYorkRSP;
}

+ (NSArray*) valuesArrayForChaChaSilver_openBasic
{
    NSArray *valuesForOpenBasic = @[@"alemana", @"closedBasic", @"fan", @"naturalTop", @"openBasic", @"threeChasBack", @"threeChasForward"];
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
    NSArray *valuesForRopeSpinning= @[@"aida", @"alemana", @"chase", @"closedBasic", @"closedHipTwist", @"crossBasic", @"cubanBreakL", @"cubanBreakR", @"cubanBreakSplitL", @"cubanBreakSplitR", @"curl", @"fan", @"handToHandLSP", @"handToHandRSP", @"hockeyStick", @"naturalOpeningOut", @"naturalTop", @"newYorkLSP", @"newYorkRSP", @"openBasic", @"openHipTwist", @"openingOutFromReverseTop", @"reverseTop", @"ropeSpinning", @"spiral", @"shoulderToShoulderL", @"shoulderToShoulderR", @"sideStep", @"spotTurnL", @"spotTurnR", @"switchTurnL", @"switchTurnR", @"thereAndBack", @"threeChasBack", @"threeChasForward", @"timeStepL", @"timeStepR", @"underarmTurnL", @"underarmTurnR"];
    return valuesForRopeSpinning;
}

+ (NSArray*) valuesArrayForChaChaSilver_spiral
{
    NSArray *valuesForSpiral= @[@"alemana", @"chase", @"cubanBreakL", @"cubanBreakSplitL", @"curl", @"hockeyStick", @"newYorkLSP", @"openBasic", @"openHipTwist", @"reverseTop", @"spotTurnR", @"switchTurnR", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForSpiral;
}

+ (NSArray*) valuesArrayForChaChaSilver_shoulderToShoulderL
{
    NSArray *valuesForShoulderToShoulderL = @[@"alemana", @"closedBasic", @"closedHipTwist",                                              @"fan", @"handToHandLSP", @"newYorkRSP", @"openBasic", @"shoulderToShoulderR", @"sideStep", @"spotTurnL", @"switchTurnL", @"threeChasForward", @"timeStepR", @"underarmTurnR" ];
    return valuesForShoulderToShoulderL;
}

+ (NSArray*) valuesArrayForChaChaSilver_shoulderToShoulderR
{
    NSArray *valuesForShoulderToShoulderR = @[@"closedBasic", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic", @"shoulderToShoulderL", @"sideStep", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"threeChasForward", @"timeStepL", @"underarmTurnL" ];
    return valuesForShoulderToShoulderR;
}

+ (NSArray*) valuesArrayForChaChaSilver_sideStep
{
    NSArray *valuesForSideStep = @[@"alemana", @"closedBasic", @"closedHipTwist", @"fan", @"handToHand", @"hockeyStick", @"naturalOpeningOut", @"naturalTop", @"newYorkRSP", @"newYorkLSP", @"openBasic", @"shoulderToShoulder", @"sideStep", @"spotTurnL", @"spotTurnR", @"switchTurnL", @"switchTurnR", @"threeChasBack", @"threeChasForward", @"timeStep"];
    return valuesForSideStep;
}

+ (NSArray*) valuesArrayForChaChaSilver_spotTurnL
{
    NSArray *valuesForSpotTurnL = @[@"alemana", @"closedBasic", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic", @"sideStep", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"threeChasForward", @"timeStepL", @"underarmTurnR"];
    return valuesForSpotTurnL;
}

+ (NSArray*) valuesArrayForChaChaSilver_spotTurnR
{
    NSArray *valuesForSpotTurnR = @[@"closedBasic", @"fan", @"handToHandLSP", @"newYorkRSP", @"openBasic", @"sideStep", @"spotTurnL", @"switchTurnL", @"threeChasForward", @"timeStepR", @"underarmTurnL"];
    return valuesForSpotTurnR;
}

+ (NSArray*) valuesArrayForChaChaSilver_switchTurnL
{
    NSArray *valuesForSwitchTurnL = @[@"alemana", @"closedBasic", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic", @"sideStep", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"threeChasForward", @"timeStepL", @"underarmTurnR"];
    return valuesForSwitchTurnL;
}

+ (NSArray*) valuesArrayForChaChaSilver_switchTurnR
{
    NSArray *valuesForSwitchTurnR = @[@"closedBasic", @"fan", @"handToHandLSP", @"newYorkRSP", @"openBasic", @"sideStep", @"spotTurnL", @"switchTurnL", @"threeChasForward", @"timeStepR", @"underarmTurnL"];
    return valuesForSwitchTurnR;
}

+ (NSArray*) valuesArrayForChaChaSilver_thereAndBack
{
    NSArray *valuesForThereAndBack = @[@"closedBasic", @"fan", @"handToHandRSP", @"openBasic", @"sideStep", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"timeStepL", @"underarmTurnL"];
    return valuesForThereAndBack;
}

+ (NSArray*) valuesArrayForChaChaSilver_threeChasBack
{
    NSArray *valuesForThreeChasBack = @[@"alemana", @"closedBasic", @"fan", @"naturalTop", @"openBasic"];
    return valuesForThreeChasBack;
}

+ (NSArray*) valuesArrayForChaChaSilver_threeChasForward
{
    NSArray *valuesForThreeChasForward =   @[@"alemana", @"closedBasic", @"fan", @"handToHandLSP", @"handToHandRSP", @"newYorkLSP", @"newYorkRSP", @"openBasic", @"sideStep", @"spotTurnL", @"spotTurnR", @"switchTurnL", @"switchTurnR", @"thereAndBack"];
    return valuesForThreeChasForward;
}

+ (NSArray*) valuesArrayForChaChaSilver_timeStepL
{
    NSArray *valuesForTimeStepL = @[ @"closedBasic", @"handToHandLSP", @"newYorkRSP", @"openBasic",  @"shoulderToShoulderR", @"sideStep", @"spotTurnL", @"switchTurnL", @"timeStepR", @"underarmTurnR"];
    return valuesForTimeStepL;
}

+ (NSArray*) valuesArrayForChaChaSilver_timeStepR
{
    NSArray *valuesForTimeStepR = @[@"alemana", @"closedBasic", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic",  @"shoulderToShoulderL", @"sideStep", @"spotTurnR", @"switchTurnR", @"thereAndBack", @"timeStepL", @"underarmTurnL"];
    return valuesForTimeStepR;
}

+ (NSArray*) valuesArrayForChaChaSilver_underarmTurnL
{
    NSArray *valuesForUnderarmTurnL = @[@"closedBasic", @"fan", @"handToHandLSP",  @"naturalTop", @"newYorkRSP", @"openBasic", @"sideStep", @"spotTurnR", @"switchTurnR", @"timeStepR", @"underarmTurnR"];
    return valuesForUnderarmTurnL;
}

+ (NSArray*) valuesArrayForChaChaSilver_underarmTurnR
{
    NSArray *valuesForUnderarmTurnR = @[@"closedBasic", @"fan", @"handToHandRSP", @"newYorkLSP", @"openBasic", @"shoulderToShoulderL", @"sideStep", @"spotTurnL", @"switchTurnL", @"thereAndBack", @"threeChasForward", @"timeStepL", @"underarmTurnL"];
    return valuesForUnderarmTurnR;
}



@end