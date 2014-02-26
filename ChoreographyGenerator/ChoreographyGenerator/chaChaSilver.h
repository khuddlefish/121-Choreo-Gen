//
//  chaChaSilver.h
//  ChoreographyGenerator
//
//  Created by Noelle Fa-Kaji on 2/23/14.
//  Copyright (c) 2014 Noelle Fa-Kaji. All rights reserved.
//
// Note: Moves are alphabetized by move for clarity
// Adapted from information found at: www.dancecentral.info/ballroom/international-style/cha-cha-cha/

#import <Foundation/Foundation.h>

@interface chaChaSilver : NSObject

/*
 * getValuesArrayForChaChaSilverMove: calls the correct method of next possible moves
 *      Input: an NSString* representing the move that is the dictionary key
 *      Output: an NSArray* (of NSString*) that are the possible next moves
 *
 */
+ (NSArray*) getValuesArrayForChaChaSilverMove: (NSString*) move;


/***********************************************
 *                                             *
 *           ENUMERATED VALUE ARRAYS           *
 *                                             *
 ***********************************************/
+ (NSArray*) valuesArrayForChaChaSilver_aida;
+ (NSArray*) valuesArrayForChaChaSilver_alemana;
+ (NSArray*) valuesArrayForChaChaSilver_chase;
+ (NSArray*) valuesArrayForChaChaSilver_closedBasic;
+ (NSArray*) valuesArrayForChaChaSilver_closedHipTwist;
+ (NSArray*) valuesArrayForChaChaSilver_crossBasic;
+ (NSArray*) valuesArrayForChaChaSilver_cubanBreakL;
+ (NSArray*) valuesArrayForChaChaSilver_cubanBreakR;
+ (NSArray*) valuesArrayForChaChaSilver_cubanBreakSplitL;
+ (NSArray*) valuesArrayForChaChaSilver_cubanBreakSplitR;
+ (NSArray*) valuesArrayForChaChaSilver_curl;
+ (NSArray*) valuesArrayForChaChaSilver_fan;
+ (NSArray*) valuesArrayForChaChaSilver_handToHandLSP;
+ (NSArray*) valuesArrayForChaChaSilver_handToHandRSP;
+ (NSArray*) valuesArrayForChaChaSilver_hockeyStick;
+ (NSArray*) valuesArrayForChaChaSilver_naturalOpeningOut;
+ (NSArray*) valuesArrayForChaChaSilver_naturalTop;
+ (NSArray*) valuesArrayForChaChaSilver_newYorkLSP;
+ (NSArray*) valuesArrayForChaChaSilver_newYorkRSP;
+ (NSArray*) valuesArrayForChaChaSilver_openBasic;
+ (NSArray*) valuesArrayForChaChaSilver_openHipTwist;
+ (NSArray*) valuesArrayForChaChaSilver_openingOutFromReverseTop;
+ (NSArray*) valuesArrayForChaChaSilver_reverseTop;
+ (NSArray*) valuesArrayForChaChaSilver_ropeSpinning;
+ (NSArray*) valuesArrayForChaChaSilver_spiral;
+ (NSArray*) valuesArrayForChaChaSilver_shoulderToShoulderL;
+ (NSArray*) valuesArrayForChaChaSilver_shoulderToShoulderR;
+ (NSArray*) valuesArrayForChaChaSilver_sideStep;
+ (NSArray*) valuesArrayForChaChaSilver_spotTurnL;
+ (NSArray*) valuesArrayForChaChaSilver_spotTurnR;
+ (NSArray*) valuesArrayForChaChaSilver_switchTurnL;
+ (NSArray*) valuesArrayForChaChaSilver_switchTurnR;
+ (NSArray*) valuesArrayForChaChaSilver_thereAndBack;
+ (NSArray*) valuesArrayForChaChaSilver_threeChasBack;
+ (NSArray*) valuesArrayForChaChaSilver_threeChasForward;
+ (NSArray*) valuesArrayForChaChaSilver_timeStepL;
+ (NSArray*) valuesArrayForChaChaSilver_timeStepR;
+ (NSArray*) valuesArrayForChaChaSilver_underarmTurnL;
+ (NSArray*) valuesArrayForChaChaSilver_underarmTurnR;


@end