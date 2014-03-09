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
    NSArray *valuesForAida = @[
                               @"timeStepL",
                               @"closedBasic",
                               @"openBasic",
                               @"newYorkLSP",
                               @"spotTurnR",
                               @"switchTurnR",
                               @"underarmTurnR",
                               @"handToHandRSP",
                               @"sideStepLwithLF",
                               @"sideStepRwithLF",
                               @"thereAndBack",
                               @"threeChasForward",
                               @"fan",
                               @"crossBasic",
                               @"cubanBreakL",
                               @"cubanBreakSplitL",
                               @"alemana",
                               @"openHipTwist",
                               @"curl",
                               @"chase"];
    return valuesForAida;
}

+ (NSArray*) valuesArrayForChaChaSilver_alemana
{
    NSArray *valuesForAlemana = @[
                                  @"shoulderToShoulderL",
                                  @"closedBasic",
                                  @"openBasic",
                                  @"thereAndBack",
                                  @"fan",
                                  @"handToHandRSP",
                                  @"sideStepLwithLF",
                                  @"sideStepRwithLF",
                                  @"timeStepL",
                                  @"crossBasic",
                                  @"newYorkLSP",
                                  @"spotTurnR",
                                  @"switchTurnR",
                                  @"underarmTurnL",
                                  @"threeChasForward",
                                  @"cubanBreakL",
                                  @"cubanBreakSplitL",
                                  @"naturalOpeningOut",
                                  @"closedHipTwist",
                                  @"spiral",
                                  @"ropeSpinning"];
    return valuesForAlemana;
}

+ (NSArray*) valuesArrayForChaChaSilver_chase
{
    NSArray *valuesForChase= @[
                               @"openBasic",
                               @"timeStepL",
                               @"alemana",
                               @"openHipTwist",
                               @"curl"];
    return valuesForChase;
}

+ (NSArray*) valuesArrayForChaChaSilver_closedBasic
{
    NSArray *valuesForClosedBasic = @[
                                      @"timeStepR",
                                      @"openBasic",
                                      @"closedBasic",
                                      @"newYorkLSP",
                                      @"spotTurnR",
                                      @"switchTurnR",
                                      @"underarmTurnL",
                                      @"shoulderToShoulderL",
                                      @"sideStepLwithLF",
                                      @"sideStepRwithLF",
                                      @"handToHandRSP",
                                      @"thereAndBack",
                                      @"timeStepL",
                                      @"fan",
                                      @"crossBasic",
                                      @"cubanBreakL",
                                      @"cubanBreakSplitL",
                                      @"threeChasBack",
                                      @"spotTurnL",
                                      @"switchTurnL",
                                      @"underarmTurnR",
                                      @"handToHandLSP",
                                      @"sideStepLwithRF",
                                      @"sideStepRwithRF",
                                      @"naturalTop",
                                      @"threeChasForward",
                                      @"reverseTop"];
    return valuesForClosedBasic;
}

+ (NSArray*) valuesArrayForChaChaSilver_closedHipTwist
{
    NSArray *valuesForClosedHipTwist = @[
                                         @"alemana",
                                         @"hockeyStick",
                                         @"openBasic",
                                         @"timeStepL",
                                         @"openHipTwist",
                                         @"curl",
                                         @"cubanBreakL",
                                         @"cubanBreakSplitL",
                                         @"chase",
                                         @"newYorkLSP",
                                         @"spotTurnR",
                                         @"switchTurnR",
                                         @"underarmTurnL",
                                         @"threeChasForward",
                                         @"reverseTop"];
    return valuesForClosedHipTwist;
}

+ (NSArray*) valuesArrayForChaChaSilver_crossBasic
{
    NSArray *valuesForCrossBasic = @[
                                     @"fan",
                                     @"hockeyStick",
                                     @"alemana",
                                     @"newYorkLSP",
                                     @"closedBasic",
                                     @"spotTurnR",
                                     @"switchTurnR",
                                     @"handToHandRSP",
                                     @"sideStepLwithLF",
                                     @"sideStepRwithLF",
                                     @"thereAndBack",
                                     @"timeStepL",
                                     @"crossBasic",
                                     @"cubanBreakL",
                                     @"cubanBreakSplitL",
                                     @"underarmTurnR",
                                     @"spiral"];
    return valuesForCrossBasic;
}

+ (NSArray*) valuesArrayForChaChaSilver_cubanBreakL
{
    NSArray *valuesForCubanBreakL = @[
                                      @"fan",
                                      @"timeStepR",
                                      @"sideStepRwithRF",
                                      @"sideStepLwithRF",
                                      @"handToHandLSP",
                                      @"underarmTurnL",
                                      @"spotTurnL",
                                      @"switchTurnL",
                                      @"newYorkRSP",
                                      @"closedBasic",
                                      @"cubanBreakR"];
    return valuesForCubanBreakL;
}

+ (NSArray*) valuesArrayForChaChaSilver_cubanBreakR
{
    NSArray *valuesForCubanBreakR = @[
                                      @"chase",
                                      @"crossBasic",
                                      @"openHipTwist",
                                      @"fan",
                                      @"timeStepL",
                                      @"sideStepRwithLF",
                                      @"sideStepLwithLF",
                                      @"thereAndBack",
                                      @"handToHandRSP",
                                      @"closedBasic",
                                      @"cubanBreakL",
                                      @"underarmTurnR",
                                      @"spotTurnR",
                                      @"switchTurnR",
                                      @"newYorkLSP"];
    return valuesForCubanBreakR;
}

+ (NSArray*) valuesArrayForChaChaSilver_cubanBreakSplitL
{
    NSArray *valuesForCubanBreakSplitL = @[
                                           @"chase",
                                           @"crossBasic",
                                           @"openHipTwist",
                                           @"fan",
                                           @"timeStepL",
                                           @"sideStepRwithLF",
                                           @"sideStepLwithLF",
                                           @"thereAndBack",
                                           @"handToHandRSP",
                                           @"closedBasic",
                                           @"cubanBreakSplitR",
                                           @"underarmTurnR",
                                           @"spotTurnR",
                                           @"switchTurnR",
                                           @"newYorkRSP"];
    return valuesForCubanBreakSplitL;
}

+ (NSArray*) valuesArrayForChaChaSilver_cubanBreakSplitR
{
    NSArray *valuesForCubanBreakSplitR = @[
                                           @"fan",
                                           @"timeStepR",
                                           @"sideStepRwithRF",
                                           @"sideStepLwithRF",
                                           @"handToHandLSP",
                                           @"closedBasic",
                                           @"cubanBreakSplitL",
                                           @"underarmTurnL",
                                           @"spotTurnL",
                                           @"switchTurnL",
                                           @"newYorkLSP"];
    return valuesForCubanBreakSplitR;
}

+ (NSArray*) valuesArrayForChaChaSilver_curl
{
    NSArray *valuesForCurl = @[
                               @"chase",
                               @"alemana",
                               @"hockeyStick",
                               @"openBasic",
                               @"timeStepL",
                               @"openHipTwist",
                               @"curl",
                               @"cubanBreakL",
                               @"cubanBreakSplitL",
                               @"newYorkLSP",
                               @"spotTurnR",
                               @"switchTurnR",
                               @"underarmTurnL",
                               @"threeChasForward",
                               @"reverseTop"];
    return valuesForCurl;
}

+ (NSArray*) valuesArrayForChaChaSilver_fan
{
    NSArray *valuesForFan = @[
                              @"alemana",
                              @"hockeyStick"];
    return valuesForFan;
}

+ (NSArray*) valuesArrayForChaChaSilver_handToHandLSP
{
    NSArray *valuesForHandToHandLSP = @[
                                        @"crossBasic",
                                        @"closedBasic",
                                        @"openBasic",
                                        @"newYorkLSP",
                                        @"spotTurnR",
                                        @"switchTurnR",
                                        @"underarmTurnL",
                                        @"handToHandRSP",
                                        @"sideStepLwithLF",
                                        @"sideStepRwithLF",
                                        @"thereAndBack",
                                        @"timeStepL",
                                        @"fan",
                                        @"ropeSpinning",
                                        @"cubanBreakL",
                                        @"cubanBreakSplitL",
                                        @"threeChasForward"];
    return valuesForHandToHandLSP;
}

+ (NSArray*) valuesArrayForChaChaSilver_handToHandRSP
{
    NSArray *valuesForHandToHandRSP = @[
                                        @"closedBasic",
                                        @"openBasic",
                                        @"newYorkRSP",
                                        @"spotTurnL",
                                        @"switchTurnL",
                                        @"underarmTurnR",
                                        @"handToHandLSP",
                                        @"sideStepLwithRF",
                                        @"sideStepRwithRF",
                                        @"timeStepR",
                                        @"threeChasForward",
                                        @"fan",
                                        @"closedHipTwist",
                                        @"aida",
                                        @"spiral",
                                        @"cubanBreakR",
                                        @"cubanBreakSplitR"];
    return valuesForHandToHandRSP;
}

+ (NSArray*) valuesArrayForChaChaSilver_hockeyStick
{
    NSArray *valuesForHockeyStick = @[
                                      @"openBasic",
                                      @"shoulderToShoulderL",
                                      @"timeStepL",
                                      @"alemana",
                                      @"openHipTwist",
                                      @"curl",
                                      @"chase",
                                      @"threeChasForward",
                                      @"newYorkLSP",
                                      @"spotTurnR",
                                      @"switchTurnR",
                                      @"underarmTurnL",
                                      @"cubanBreakL",
                                      @"cubanBreakSplitL"];
    return valuesForHockeyStick;
}

+ (NSArray*) valuesArrayForChaChaSilver_naturalOpeningOut
{
    NSArray *valuesForNaturalOpeningOut = @[
                                            @"openBasic",
                                            @"closedBasic",
                                            @"underarmTurnR",
                                            @"fan",
                                            @"reverseTop"];
    return valuesForNaturalOpeningOut;
}

+ (NSArray*) valuesArrayForChaChaSilver_naturalTop
{
    NSArray *valuesForNaturalTop = @[
                                     @"openBasic",
                                     @"closedBasic",
                                     @"fan",
                                     @"naturalOpeningOut",
                                     @"closedHipTwist",
                                     @"spiral",
                                     @"ropeSpinning",
                                     @"hockeyStick"];
    return valuesForNaturalTop;
}

+ (NSArray*) valuesArrayForChaChaSilver_newYorkLSP
{
    NSArray *valuesForNewYorkLSP = @[
                                     @"newYorkRSP",
                                     @"spotTurnL",
                                     @"switchTurnL",
                                     @"cubanBreakR",
                                     @"cubanBreakSplitR",
                                     @"closedBasic",
                                     @"openBasic",
                                     @"underarmTurnR",
                                     @"handToHandLSP",
                                     @"sideStepLwithRF",
                                     @"sideStepRwithRF",
                                     @"timeStepR",
                                     @"fan",
                                     @"closedHipTwist",
                                     @"threeChasForward"];
    return valuesForNewYorkLSP;
}

+ (NSArray*) valuesArrayForChaChaSilver_newYorkRSP
{
    NSArray *valuesForNewYorkRSP = @[
                                     @"newYorkLSP",
                                     @"spotTurnR",
                                     @"switchTurnR",
                                     @"underarmTurnL",
                                     @"cubanBreakL",
                                     @"cubanBreakSplitL",
                                     @"closedBasic",
                                     @"openBasic",
                                     @"handToHandRSP",
                                     @"sideStepLwithLF",
                                     @"sideStepRwithLF",
                                     @"thereAndBack",
                                     @"timeStepL",
                                     @"fan",
                                     @"crossBasic",
                                     @"threeChasForward"];
    return valuesForNewYorkRSP;
}

+ (NSArray*) valuesArrayForChaChaSilver_openBasic
{
    NSArray *valuesForOpenBasic = @[
                                    @"fan",
                                    @"closedBasic",
                                    @"openBasic",
                                    @"threeChasBack",
                                    @"naturalTop",
                                    @"threeChasForward",
                                    @"alemana",
                                    @"openHipTwist",
                                    @"curl",
                                    @"chase"];
    return valuesForOpenBasic;
}

+ (NSArray*) valuesArrayForChaChaSilver_openHipTwist
{
    NSArray *valuesForOpenHipTwist = @[
                                       @"alemana",
                                       @"hockeyStick",
                                       @"openBasic",
                                       @"timeStepL",
                                       @"openHipTwist",
                                       @"curl",
                                       @"cubanBreakL",
                                       @"cubanBreakSplitL",
                                       @"chase",
                                       @"newYorkLSP",
                                       @"spotTurnR",
                                       @"switchTurnR",
                                       @"underarmTurnL",
                                       @"threeChasForward",
                                       @"reverseTop"];
    return valuesForOpenHipTwist;
}

+ (NSArray*) valuesArrayForChaChaSilver_openingOutFromReverseTop
{
    NSArray *valuesForOpeningOutFromReverseTop = @[
                                                   @"alemana",
                                                   @"hockeyStick"];
    return valuesForOpeningOutFromReverseTop;
}

+ (NSArray*) valuesArrayForChaChaSilver_reverseTop
{
    NSArray *valuesForReverseTop= @[
                                    @"thereAndBack",
                                    @"closedBasic",
                                    @"openBasic",
                                    @"fan",
                                    @"openingOutFromReverseTop",
                                    @"aida",
                                    @"spiral"];
    return valuesForReverseTop;
}

+ (NSArray*) valuesArrayForChaChaSilver_ropeSpinning
{
    NSArray *valuesForRopeSpinning= @[
                                      @"closedBasic",
                                      @"openBasic",
                                      @"thereAndBack",
                                      @"fan",
                                      @"handToHandRSP",
                                      @"sideStepLwithLF", 
                                      @"sideStepRwithLF",
                                      @"timeStepL",
                                      @"crossBasic",
                                      @"cubanBreakL",
                                      @"cubanBreakSplitL",
                                      @"newYorkLSP",
                                      @"spotTurnR",
                                      @"switchTurnR",
                                      @"underarmTurnL",
                                      @"threeChasForward",
                                      @"naturalOpeningOut",
                                      @"closedHipTwist",
                                      @"spiral",
                                      @"ropeSpinning"];
    return valuesForRopeSpinning;
}

+ (NSArray*) valuesArrayForChaChaSilver_spiral
{
    NSArray *valuesForSpiral= @[
                                @"chase",
                                @"alemana",
                                @"hockeyStick",
                                @"openBasic",
                                @"timeStepL",
                                @"openHipTwist",
                                @"curl",
                                @"cubanBreakL",
                                @"cubanBreakSplitL",
                                @"newYorkLSP",
                                @"spotTurnR", 
                                @"switchTurnR",
                                @"underarmTurnL",
                                @"threeChasForward",
                                @"reverseTop"];
    return valuesForSpiral;
}

+ (NSArray*) valuesArrayForChaChaSilver_shoulderToShoulderL
{
    NSArray *valuesForShoulderToShoulderL = @[
                                              @"shoulderToShoulderR",
                                              @"closedBasic",
                                              @"openBasic",
                                              @"spotTurnL",
                                              @"switchTurnL",
                                              @"underarmTurnR",
                                              @"handToHandLSP",
                                              @"sideStepLwithRF",
                                              @"sideStepRwithRF",
                                              @"timeStepR",
                                              @"fan",
                                              @"closedHipTwist",
                                              @"alemana",
                                              @"cubanBreakR",
                                              @"cubanBreakSplitR",
                                              @"newYorkRSP",
                                              @"threeChasForward"];
    return valuesForShoulderToShoulderL;
}

+ (NSArray*) valuesArrayForChaChaSilver_shoulderToShoulderR
{
    NSArray *valuesForShoulderToShoulderR = @[
                                              @"crossBasic",
                                              @"shoulderToShoulderL",
                                              @"closedBasic",
                                              @"openBasic",
                                              @"spotTurnR",
                                              @"switchTurnR",
                                              @"underarmTurnL",
                                              @"handToHandRSP",
                                              @"sideStepLwithLF",
                                              @"sideStepRwithLF",
                                              @"thereAndBack",
                                              @"timeStepL",
                                              @"fan",
                                              @"cubanBreakL",
                                              @"cubanBreakSplitL",
                                              @"newYorkLSP",
                                              @"threeChasForward"];
    return valuesForShoulderToShoulderR;
}

+ (NSArray*) valuesArrayForChaChaSilver_sideStepLwithLF
{
    NSArray *valuesForSideStepLwithLF = @[
                                          @"closedBasic",
                                          @"openBasic",
                                          @"newYorkRSP",
                                          @"spotTurnL",
                                          @"switchTurnL",
                                          @"underarmTurnR",
                                          @"shoulderToShoulderR",
                                          @"handToHandLSP",
                                          @"sideStepLwithRF",
                                          @"timeStepR",
                                          @"cubanBreakR",
                                          @"cubanBreakSplitR"];
    return valuesForSideStepLwithLF;
}

+ (NSArray*) valuesArrayForChaChaSilver_sideStepLwithRF
{
    NSArray *valuesForSideStepLwithRF = @[
                                          @"closedBasic",
                                          @"openBasic",
                                          @"thereAndBack",
                                          @"sideStepLwithLF",
                                          @"fan"];
    return valuesForSideStepLwithRF;
}

+ (NSArray*) valuesArrayForChaChaSilver_sideStepRwithLF
{
    NSArray *valuesForSideStepRwithLF = @[
                                          @"closedBasic",
                                          @"openBasic",
                                          @"underarmTurnR",
                                          @"sideStepRwithRF",
                                          @"fan"];
    return valuesForSideStepRwithLF;
}

+ (NSArray*) valuesArrayForChaChaSilver_sideStepRwithRF
{
    NSArray *valuesForSideStepRwithRF = @[
                                          @"crossBasic",
                                          @"closedBasic",
                                          @"openBasic",
                                          @"newYorkLSP",
                                          @"spotTurnR",
                                          @"switchTurnR",
                                          @"shoulderToShoulderL",
                                          @"handToHandRSP",
                                          @"sideStepRwithLF",
                                          @"timeStepL",
                                          @"fan",
                                          @"cubanBreakR",
                                          @"cubanBreakSplitR"];
    return valuesForSideStepRwithRF;
}


+ (NSArray*) valuesArrayForChaChaSilver_spotTurnL
{
    NSArray *valuesForSpotTurnL = @[
                                    @"timeStepL",
                                    @"closedBasic",
                                    @"openBasic",
                                    @"newYorkLSP",
                                    @"spotTurnR",
                                    @"switchTurnR",
                                    @"underarmTurnR",
                                    @"handToHandRSP",
                                    @"sideStepLwithLF",
                                    @"sideStepRwithLF",
                                    @"thereAndBack",
                                    @"threeChasForward",
                                    @"fan",
                                    @"crossBasic",
                                    @"cubanBreakL",
                                    @"cubanBreakSplitL",
                                    @"alemana",
                                    @"openHipTwist",
                                    @"curl",
                                    @"chase"];
    return valuesForSpotTurnL;
}

+ (NSArray*) valuesArrayForChaChaSilver_spotTurnR
{
    NSArray *valuesForSpotTurnR = @[
                                    @"closedBasic",
                                    @"openBasic",
                                    @"newYorkRSP",
                                    @"spotTurnL",
                                    @"switchTurnL",
                                    @"underarmTurnL",
                                    @"handToHandLSP",
                                    @"sideStepLwithRF",
                                    @"sideStepRwithRF",
                                    @"timeStepR",
                                    @"threeChasForward",
                                    @"fan",
                                    @"aida",
                                    @"cubanBreakR",
                                    @"cubanBreakSplitR"];
    return valuesForSpotTurnR;
}

+ (NSArray*) valuesArrayForChaChaSilver_switchTurnL
{
    NSArray *valuesForSwitchTurnL = @[
                                      @"timeStepL",
                                      @"closedBasic",
                                      @"openBasic",
                                      @"newYorkLSP",
                                      @"spotTurnR",
                                      @"switchTurnR",
                                      @"underarmTurnR",
                                      @"handToHandRSP",
                                      @"sideStepLwithLF",
                                      @"sideStepRwithLF",
                                      @"thereAndBack",
                                      @"threeChasForward",
                                      @"fan",
                                      @"crossBasic",
                                      @"cubanBreakL",
                                      @"cubanBreakSplitL",
                                      @"alemana",
                                      @"openHipTwist",
                                      @"curl",
                                      @"chase"];
    return valuesForSwitchTurnL;
}

+ (NSArray*) valuesArrayForChaChaSilver_switchTurnR
{
    NSArray *valuesForSwitchTurnR = @[
                                      @"closedBasic",
                                      @"openBasic",
                                      @"newYorkRSP",
                                      @"spotTurnL",
                                      @"switchTurnL",
                                      @"underarmTurnL",
                                      @"handToHandLSP",
                                      @"sideStepLwithRF",
                                      @"sideStepRwithRF",
                                      @"timeStepR",
                                      @"threeChasForward",
                                      @"fan",
                                      @"aida",
                                      @"cubanBreakR",
                                      @"cubanBreakSplitR"];
    return valuesForSwitchTurnR;
}

+ (NSArray*) valuesArrayForChaChaSilver_thereAndBack
{
    NSArray *valuesForThereAndBack = @[
                                       @"closedBasic",
                                       @"openBasic",
                                       @"spotTurnR",
                                       @"switchTurnR",
                                       @"underarmTurnL",
                                       @"sideStepLwithLF",
                                       @"sideStepRwithLF",
                                       @"handToHandRSP",
                                       @"thereAndBack",
                                       @"timeStepL",
                                       @"fan",
                                       @"cubanBreakR",
                                       @"cubanBreakSplitR"];
    return valuesForThereAndBack;
}

+ (NSArray*) valuesArrayForChaChaSilver_threeChasBack
{
    NSArray *valuesForThreeChasBack = @[
                                        @"closedBasic",
                                        @"openBasic",
                                        @"fan",
                                        @"alemana",
                                        @"naturalTop"];
    return valuesForThreeChasBack;
}

+ (NSArray*) valuesArrayForChaChaSilver_threeChasForward
{
    NSArray *valuesForThreeChasForward =   @[
                                             @"crossBasic",
                                             @"aida",
                                             @"sideStepRwithRF",
                                             @"sideStepRwithLF",
                                             @"sideStepLwithRF",
                                             @"sideStepLwithLF",
                                             @"thereAndBack",
                                             @"handToHandRSP",
                                             @"handToHandLSP",
                                             @"closedBasic",
                                             @"openBasic",
                                             @"fan",
                                             @"alemana",
                                             @"openHipTwist",
                                             @"curl",
                                             @"chase",
                                             @"newYorkRSP",
                                             @"spotTurnL",
                                             @"switchTurnL",
                                             @"newYorkLSP",
                                             @"spotTurnR",
                                             @"switchTurnR"];
    return valuesForThreeChasForward;
}

+ (NSArray*) valuesArrayForChaChaSilver_timeStepL
{
    NSArray *valuesForTimeStepL = @[
                                    @"closedBasic",
                                    @"openBasic",
                                    @"newYorkRSP",
                                    @"spotTurnL",
                                    @"switchTurnL",
                                    @"underarmTurnR",
                                    @"shoulderToShoulderR",
                                    @"sideStepLwithRF",
                                    @"sideStepRwithRF",
                                    @"handToHandLSP",
                                    @"timeStepR",
                                    @"cubanBreakR",
                                    @"cubanBreakSplitR"];
    return valuesForTimeStepL;
}

+ (NSArray*) valuesArrayForChaChaSilver_timeStepR
{
    NSArray *valuesForTimeStepR = @[
                                    @"thereAndBack",
                                    @"closedBasic",
                                    @"openBasic",
                                    @"newYorkLSP",
                                    @"spotTurnR",
                                    @"switchTurnR",
                                    @"underarmTurnL",
                                    @"shoulderToShoulderL",
                                    @"sideStepLwithLF",
                                    @"sideStepRwithLF",
                                    @"handToHandRSP",
                                    @"timeStepL",
                                    @"fan",
                                    @"alemana",
                                    @"openHipTwist",
                                    @"curl",
                                    @"crossBasic",
                                    @"cubanBreakL",
                                    @"cubanBreakSplitL",
                                    @"chase"];
    return valuesForTimeStepR;
}

+ (NSArray*) valuesArrayForChaChaSilver_underarmTurnL
{
    NSArray *valuesForUnderarmTurnL = @[
                                        @"closedBasic",
                                        @"openBasic",
                                        @"newYorkRSP",
                                        @"spotTurnR",
                                        @"switchTurnR",
                                        @"underarmTurnR",
                                        @"handToHandLSP",
                                        @"sideStepLwithRF",
                                        @"sideStepRwithRF",
                                        @"timeStepR",
                                        @"fan",
                                        @"naturalTop",
                                        @"aida",
                                        @"cubanBreakR",
                                        @"cubanBreakSplitR"];
    return valuesForUnderarmTurnL;
}

+ (NSArray*) valuesArrayForChaChaSilver_underarmTurnR
{
    NSArray *valuesForUnderarmTurnR = @[
                                        @"crossBasic",
                                        @"closedBasic",
                                        @"openBasic",
                                        @"newYorkLSP",
                                        @"spotTurnL",
                                        @"switchTurnL",
                                        @"underarmTurnL",
                                        @"shoulderToShoulderL",
                                        @"handToHandRSP",
                                        @"sideStepLwithLF",
                                        @"sideStepRwithLF",
                                        @"thereAndBack",
                                        @"timeStepL",
                                        @"threeChasForward",
                                        @"fan",
                                        @"cubanBreakL",
                                        @"cubanBreakSplitL"];
    return valuesForUnderarmTurnR;
}


@end