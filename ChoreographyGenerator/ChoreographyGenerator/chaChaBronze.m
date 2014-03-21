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

//NOTE: Arrays are rearranged so the order/index corresponds to the order from the dancecentral website

+ (NSArray*) valuesArrayForChaChaBronze_alemana
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
                                  @"newYorkLSP",
                                  @"spotTurnR",
                                  @"switchTurnR",
                                  @"underarmTurnL",
                                  @"threeChasForward",
                                  @"naturalOpeningOut",
                                  @"closedHipTwist"];
    return valuesForAlemana;
}

+ (NSArray*) valuesArrayForChaChaBronze_closedBasic
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
                                      @"threeChasBack",
                                      @"spotTurnL",
                                      @"switchTurnL",
                                      @"underarmTurnR",
                                      @"handToHandLSP",
                                      @"sideStepLwithRF",
                                      @"sideStepRwithRF",
                                      @"naturalTop",
                                      @"threeChasForward"];
    return valuesForClosedBasic;
}


+ (NSArray*) valuesArrayForChaChaBronze_openBasic
{
    NSArray *valuesForOpenBasic = @[
                                    @"fan",
                                    @"closedBasic",
                                    @"openBasic",
                                    @"threeChasBack",
                                    @"naturalTop",
                                    @"threeChasForward",
                                    @"alemana"];
    return valuesForOpenBasic;
}

+ (NSArray*) valuesArrayForChaChaBronze_fan
{
    NSArray *valuesForFan = @[
                              @"alemana",
                              @"hockeyStick"];
    return valuesForFan;
}




+ (NSArray*) valuesArrayForChaChaBronze_handToHandLSP
{
    NSArray *valuesForHandToHandLSP = @[
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
                                        @"threeChasForward"];
    return valuesForHandToHandLSP;
}

+ (NSArray*) valuesArrayForChaChaBronze_handToHandRSP
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
                                        @"closedHipTwist"];
    return valuesForHandToHandRSP;
}

+ (NSArray*) valuesArrayForChaChaBronze_closedHipTwist
{
    NSArray *valuesForClosedHipTwist = @[
                                         @"alemana",
                                         @"hockeyStick",
                                         @"openBasic",
                                         @"timeStepL",
                                         @"newYorkLSP",
                                         @"spotTurnR",
                                         @"switchTurnR",
                                         @"underarmTurnL",
                                         @"threeChasForward"];
    return valuesForClosedHipTwist;
}


+ (NSArray*) valuesArrayForChaChaBronze_hockeyStick
{
    NSArray *valuesForHockeyStick = @[
                                      @"openBasic",
                                      @"shoulderToShoulderL",
                                      @"timeStepL",
                                      @"alemana",
                                      @"threeChasForward",
                                      @"newYorkLSP",
                                      @"spotTurnR",
                                      @"switchTurnR",
                                      @"underarmTurnL"];
    return valuesForHockeyStick;
}

+ (NSArray*) valuesArrayForChaChaBronze_naturalOpeningOut
{
    NSArray *valuesForNaturalOpeningOut = @[
                                            @"openBasic",
                                            @"closedBasic",
                                            @"underarmTurnR",
                                            @"fan"];
    return valuesForNaturalOpeningOut;
}

+ (NSArray*) valuesArrayForChaChaBronze_naturalTop
{
    NSArray *valuesForNaturalTop = @[
                                     @"openBasic",
                                     @"closedBasic",
                                     @"fan",
                                     @"naturalOpeningOut",
                                     @"closedHipTwist",
                                     @"hockeyStick"];
    return valuesForNaturalTop;
}

+ (NSArray*) valuesArrayForChaChaBronze_newYorkLSP
{
    NSArray *valuesForNewYorkLSP = @[
                                     @"newYorkRSP",
                                     @"spotTurnL",
                                     @"switchTurnL",  
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

+ (NSArray*) valuesArrayForChaChaBronze_newYorkRSP
{
    NSArray *valuesForNewYorkRSP = @[
                                     @"newYorkLSP",
                                     @"spotTurnR",
                                     @"switchTurnR",  
                                     @"underarmTurnL",
                                     @"closedBasic",
                                     @"openBasic",
                                     @"handToHandRSP",
                                     @"sideStepLwithLF",
                                     @"sideStepRwithLF",
                                     @"thereAndBack",
                                     @"timeStepL",  
                                     @"fan", 
                                     @"threeChasForward"];
    return valuesForNewYorkRSP;
}


+ (NSArray*) valuesArrayForChaChaBronze_shoulderToShoulderL
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
                                              @"newYorkRSP",
                                              @"threeChasForward"];
    return valuesForShoulderToShoulderL;
}

+ (NSArray*) valuesArrayForChaChaBronze_shoulderToShoulderR
{
    NSArray *valuesForShoulderToShoulderR = @[
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
                                              @"newYorkLSP",
                                              @"threeChasForward"];
    return valuesForShoulderToShoulderR;
}

+ (NSArray*) valuesArrayForChaChaBronze_sideStepLwithLF
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
                                          @"timeStepR"];
    return valuesForSideStepLwithLF;
}

+ (NSArray*) valuesArrayForChaChaBronze_sideStepLwithRF
{
    NSArray *valuesForSideStepLwithRF = @[
                                          @"closedBasic",
                                          @"openBasic",
                                          @"thereAndBack",
                                          @"sideStepLwithLF",
                                          @"fan"];
    return valuesForSideStepLwithRF;
}

+ (NSArray*) valuesArrayForChaChaBronze_sideStepRwithLF
{
    NSArray *valuesForSideStepRwithLF = @[
                                          @"closedBasic",
                                          @"openBasic",
                                          @"underarmTurnR",
                                          @"sideStepRwithRF",
                                          @"fan"];
    return valuesForSideStepRwithLF;
}

+ (NSArray*) valuesArrayForChaChaBronze_sideStepRwithRF
{
    NSArray *valuesForSideStepRwithRF = @[
                                          @"closedBasic",  
                                          @"openBasic",
                                          @"newYorkLSP",
                                          @"spotTurnR",
                                          @"switchTurnR",
                                          @"shoulderToShoulderL",
                                          @"handToHandRSP",
                                          @"sideStepRwithLF",
                                          @"timeStepL",
                                          @"fan"];
    return valuesForSideStepRwithRF;
}

+ (NSArray*) valuesArrayForChaChaBronze_spotTurnL
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
                                    @"alemana"];
    return valuesForSpotTurnL;
}

+ (NSArray*) valuesArrayForChaChaBronze_spotTurnR
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
                                    @"fan"];
    return valuesForSpotTurnR;
}

+ (NSArray*) valuesArrayForChaChaBronze_switchTurnL
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
                                      @"alemana"];
    return valuesForSwitchTurnL;
}

+ (NSArray*) valuesArrayForChaChaBronze_switchTurnR
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
                                      @"fan"];
    return valuesForSwitchTurnR;
}

+ (NSArray*) valuesArrayForChaChaBronze_thereAndBack
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
                                       @"fan"];
    return valuesForThereAndBack;
}

+ (NSArray*) valuesArrayForChaChaBronze_threeChasBack
{
    NSArray *valuesForThreeChasBack = @[
                                        @"closedBasic",
                                        @"openBasic",
                                        @"fan",
                                        @"alemana",
                                        @"naturalTop"];
    return valuesForThreeChasBack;
}

+ (NSArray*) valuesArrayForChaChaBronze_threeChasForward
{
    NSArray *valuesForThreeChasForward =   @[
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
                                             @"newYorkRSP",
                                             @"spotTurnL",
                                             @"switchTurnL",
                                             @"newYorkLSP",
                                             @"spotTurnR",
                                             @"switchTurnR"];
    return valuesForThreeChasForward;
}

+ (NSArray*) valuesArrayForChaChaBronze_timeStepL
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
                                    @"timeStepR"];
    return valuesForTimeStepL;
}

+ (NSArray*) valuesArrayForChaChaBronze_timeStepR
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
                                    @"alemana"];
    return valuesForTimeStepR;
}

+ (NSArray*) valuesArrayForChaChaBronze_underarmTurnL
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
                                        @"naturalTop"];
    return valuesForUnderarmTurnL;
}

+ (NSArray*) valuesArrayForChaChaBronze_underarmTurnR
{
    NSArray *valuesForUnderarmTurnR = @[
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
                                        @"fan"];
    return valuesForUnderarmTurnR;
}


@end
