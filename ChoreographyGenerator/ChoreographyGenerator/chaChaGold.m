//
//  chaChaGold.m
//  ChoreographyGenerator
//
//  Created by Noelle Fa-Kaji on 3/20/14.
//  Copyright (c) 2014 Noelle Fa-Kaji. All rights reserved.
//

#import "chaChaGold.h"

@implementation chaChaGold

/*
 * getValuesArrayForChaChaGoldMove: calls the correct method of next possible moves
 *      Input: an NSString* representing the move that is the dictionary key
 *      Output: an NSArray* (of NSString*) that are the possible next moves
 */
+ (NSArray*) getValuesArrayForChaChaGoldMove: (NSString*) move
{
    //Create the correct name of the method name for the move
    NSMutableString *arrayNameString =  [NSMutableString new];
    [arrayNameString appendString: @"valuesArrayForChaChaGold_"];
    [arrayNameString appendString:move];
    
    //Create a selector to be able to use this string as a message
    SEL arrayName = NSSelectorFromString(arrayNameString);
    
    return [chaChaGold performSelector:arrayName];
}


/***********************************************
 *                                             *
 *           ENUMERATED VALUE ARRAYS           *
 *                                             *
 ***********************************************/

+ (NSArray*) valuesArrayForChaChaGold_advancedHipTwist //ADDED
{
    
}

+ (NSArray*) valuesArrayForChaChaGold_aida
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

+ (NSArray*) valuesArrayForChaChaGold_alemana
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

+ (NSArray*) valuesArrayForChaChaGold_chase
{
    NSArray *valuesForChase= @[
                               @"openBasic",
                               @"timeStepL",
                               @"alemana",
                               @"openHipTwist",
                               @"curl"];
    return valuesForChase;
}

+ (NSArray*) valuesArrayForChaChaGold_closedBasic
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

+ (NSArray*) valuesArrayForChaChaGold_closedHipTwist
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

+ (NSArray*) valuesArrayForChaChaGold_crossBasic
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

+ (NSArray*) valuesArrayForChaChaGold_cubanBreakL
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

+ (NSArray*) valuesArrayForChaChaGold_cubanBreakR
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

+ (NSArray*) valuesArrayForChaChaGold_cubanBreakSplitL
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

+ (NSArray*) valuesArrayForChaChaGold_cubanBreakSplitR
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

+ (NSArray*) valuesArrayForChaChaGold_curl
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

+ (NSArray*) valuesArrayForChaChaGold_fan
{
    NSArray *valuesForFan = @[
                              @"alemana",
                              @"hockeyStick"];
    return valuesForFan;
}

+ (NSArray*) valuesArrayForChaChaGold_followMyLeader //ADDED
{
    
}

+ (NSArray*) valuesArrayForChaChaGold_footChanges1 //ADDED
{
    
}

+ (NSArray*) valuesArrayForChaChaGold_footChanges2 //ADDED
{
    
}

+ (NSArray*) valuesArrayForChaChaGold_footChanges3 //ADDED
{
    
}

+ (NSArray*) valuesArrayForChaChaGold_footChanges4 //ADDED
{
    
}

+ (NSArray*) valuesArrayForChaChaGold_handToHandLSP
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

+ (NSArray*) valuesArrayForChaChaGold_handToHandRSP
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

+ (NSArray*) valuesArrayForChaChaGold_hockeyStick
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

+ (NSArray*) valuesArrayForChaChaGold_naturalOpeningOut
{
    NSArray *valuesForNaturalOpeningOut = @[
                                            @"openBasic",
                                            @"closedBasic",
                                            @"underarmTurnR",
                                            @"fan",
                                            @"reverseTop"];
    return valuesForNaturalOpeningOut;
}

+ (NSArray*) valuesArrayForChaChaGold_naturalTop
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

+ (NSArray*) valuesArrayForChaChaGold_newYorkLSP
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

+ (NSArray*) valuesArrayForChaChaGold_newYorkRSP
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

+ (NSArray*) valuesArrayForChaChaGold_openBasic
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

+ (NSArray*) valuesArrayForChaChaGold_openHipTwist
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

+ (NSArray*) valuesArrayForChaChaGold_openingOutFromReverseTop
{
    NSArray *valuesForOpeningOutFromReverseTop = @[
                                                   @"alemana",
                                                   @"hockeyStick"];
    return valuesForOpeningOutFromReverseTop;
}

+ (NSArray*) valuesArrayForChaChaGold_reverseTop
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

+ (NSArray*) valuesArrayForChaChaGold_ropeSpinning
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

+ (NSArray*) valuesArrayForChaChaGold_shoulderToShoulderL
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

+ (NSArray*) valuesArrayForChaChaGold_shoulderToShoulderR
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

+ (NSArray*) valuesArrayForChaChaGold_sideStepLwithLF
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

+ (NSArray*) valuesArrayForChaChaGold_sideStepLwithRF
{
    NSArray *valuesForSideStepLwithRF = @[
                                          @"closedBasic",
                                          @"openBasic",
                                          @"thereAndBack",
                                          @"sideStepLwithLF",
                                          @"fan"];
    return valuesForSideStepLwithRF;
}

+ (NSArray*) valuesArrayForChaChaGold_sideStepRwithLF
{
    NSArray *valuesForSideStepRwithLF = @[
                                          @"closedBasic",
                                          @"openBasic",
                                          @"underarmTurnR",
                                          @"sideStepRwithRF",
                                          @"fan"];
    return valuesForSideStepRwithLF;
}

+ (NSArray*) valuesArrayForChaChaGold_sideStepRwithRF
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

+ (NSArray*) valuesArrayForChaChaGold_spiral
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

+ (NSArray*) valuesArrayForChaChaGold_spiralHipTwist //ADDED
{
    
}

+ (NSArray*) valuesArrayForChaChaGold_spotTurnL
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

+ (NSArray*) valuesArrayForChaChaGold_spotTurnR
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

+ (NSArray*) valuesArrayForChaChaGold_sweetheart //ADDED
{
    
}

+ (NSArray*) valuesArrayForChaChaGold_switchTurnL
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

+ (NSArray*) valuesArrayForChaChaGold_switchTurnR
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

+ (NSArray*) valuesArrayForChaChaGold_thereAndBack
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

+ (NSArray*) valuesArrayForChaChaGold_threeChasBack
{
    NSArray *valuesForThreeChasBack = @[
                                        @"closedBasic",
                                        @"openBasic",
                                        @"fan",
                                        @"alemana",
                                        @"naturalTop"];
    return valuesForThreeChasBack;
}

+ (NSArray*) valuesArrayForChaChaGold_threeChasForward
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

+ (NSArray*) valuesArrayForChaChaGold_timeStepL
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

+ (NSArray*) valuesArrayForChaChaGold_timeStepR
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

+ (NSArray*) valuesArrayForChaChaGold_turkishTowel //ADDED
{
    
}

+ (NSArray*) valuesArrayForChaChaGold_underarmTurnL
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

+ (NSArray*) valuesArrayForChaChaGold_underarmTurnR
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
