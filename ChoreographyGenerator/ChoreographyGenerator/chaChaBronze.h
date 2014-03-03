//
//  chaChaBronze.h
//  ChoreographyGenerator
//
//  Created by Noelle Fa-Kaji on 2/23/14.
//  Copyright (c) 2014 Noelle Fa-Kaji. All rights reserved.
//

// Note: Moves are alphabetized by move for clarity
// Adapted from information found at: www.dancecentral.info/ballroom/international-style/cha-cha-cha/

#import <Foundation/Foundation.h>

@interface chaChaBronze : NSObject

/*
 * getValuesArrayForChaChaBronzeMove: calls the correct method of next possible moves
 *      Input: an NSString* representing the move that is the dictionary key
 *      Output: an NSArray* (of NSString*) that are the possible next moves
 *
 */
+ (NSArray*) getValuesArrayForChaChaBronzeMove: (NSString*) move;


/***********************************************
 *                                             *
 *           ENUMERATED VALUE ARRAYS           *
 *                                             *
 ***********************************************/
+ (NSArray*) valuesArrayForChaChaBronze_alemana;
+ (NSArray*) valuesArrayForChaChaBronze_closedBasic;
+ (NSArray*) valuesArrayForChaChaBronze_closedHipTwist;
+ (NSArray*) valuesArrayForChaChaBronze_fan;
+ (NSArray*) valuesArrayForChaChaBronze_handToHandLSP;
+ (NSArray*) valuesArrayForChaChaBronze_handToHandRSP;
+ (NSArray*) valuesArrayForChaChaBronze_hockeyStick;
+ (NSArray*) valuesArrayForChaChaBronze_naturalOpeningOut;
+ (NSArray*) valuesArrayForChaChaBronze_naturalTop;
+ (NSArray*) valuesArrayForChaChaBronze_newYorkLSP;
+ (NSArray*) valuesArrayForChaChaBronze_newYorkRSP;
+ (NSArray*) valuesArrayForChaChaBronze_openBasic;
+ (NSArray*) valuesArrayForChaChaBronze_shoulderToShoulderL;
+ (NSArray*) valuesArrayForChaChaBronze_shoulderToShoulderR;
+ (NSArray*) valuesArrayForChaChaBronze_sideStepLwithLF;
+ (NSArray*) valuesArrayForChaChaBronze_sideStepLwithRF;
+ (NSArray*) valuesArrayForChaChaBronze_sideStepRwithLF;
+ (NSArray*) valuesArrayForChaChaBronze_sideStepRwithRF;
+ (NSArray*) valuesArrayForChaChaBronze_spotTurnL;
+ (NSArray*) valuesArrayForChaChaBronze_spotTurnR;
+ (NSArray*) valuesArrayForChaChaBronze_switchTurnL;
+ (NSArray*) valuesArrayForChaChaBronze_switchTurnR;
+ (NSArray*) valuesArrayForChaChaBronze_thereAndBack;
+ (NSArray*) valuesArrayForChaChaBronze_threeChasBack;
+ (NSArray*) valuesArrayForChaChaBronze_threeChasForward;
+ (NSArray*) valuesArrayForChaChaBronze_timeStepL;
+ (NSArray*) valuesArrayForChaChaBronze_timeStepR;
+ (NSArray*) valuesArrayForChaChaBronze_underarmTurnL;
+ (NSArray*) valuesArrayForChaChaBronze_underarmTurnR;

@end