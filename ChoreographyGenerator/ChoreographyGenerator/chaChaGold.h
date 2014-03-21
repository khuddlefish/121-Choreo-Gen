//
//  chaChaGold.h
//  ChoreographyGenerator
//
//  Created by Noelle Fa-Kaji on 3/20/14.
//  Copyright (c) 2014 Noelle Fa-Kaji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface chaChaGold : NSObject


/*
 * getValuesArrayForChaChaGoldMove: calls the correct method of next possible moves
 *      Input: an NSString* representing the move that is the dictionary key
 *      Output: an NSArray* (of NSString*) that are the possible next moves
 *
 */
+ (NSArray*) getValuesArrayForChaChaGoldMove: (NSString*) move;


/***********************************************
 *                                             *
 *           ENUMERATED VALUE ARRAYS           *
 *                                             *
 ***********************************************/
//group types of hip twist

+ (NSArray*) valuesArrayForChaChaGold_advancedHipTwist; //ADDED
+ (NSArray*) valuesArrayForChaChaGold_aida;
+ (NSArray*) valuesArrayForChaChaGold_alemana;
+ (NSArray*) valuesArrayForChaChaGold_chase;
+ (NSArray*) valuesArrayForChaChaGold_closedBasic;
+ (NSArray*) valuesArrayForChaChaGold_closedHipTwist;
+ (NSArray*) valuesArrayForChaChaGold_crossBasic;
+ (NSArray*) valuesArrayForChaChaGold_cubanBreakL;
+ (NSArray*) valuesArrayForChaChaGold_cubanBreakR;
+ (NSArray*) valuesArrayForChaChaGold_cubanBreakSplitL;
+ (NSArray*) valuesArrayForChaChaGold_cubanBreakSplitR;
+ (NSArray*) valuesArrayForChaChaGold_curl;
+ (NSArray*) valuesArrayForChaChaGold_fan;
+ (NSArray*) valuesArrayForChaChaGold_followMyLeader; //ADDED
+ (NSArray*) valuesArrayForChaChaGold_footChanges1; //ADDED
+ (NSArray*) valuesArrayForChaChaGold_footChanges2; //ADDED
+ (NSArray*) valuesArrayForChaChaGold_footChanges3; //ADDED
+ (NSArray*) valuesArrayForChaChaGold_footChanges4; //ADDED
+ (NSArray*) valuesArrayForChaChaGold_handToHandLSP;
+ (NSArray*) valuesArrayForChaChaGold_handToHandRSP;
+ (NSArray*) valuesArrayForChaChaGold_hockeyStick;
+ (NSArray*) valuesArrayForChaChaGold_naturalOpeningOut;
+ (NSArray*) valuesArrayForChaChaGold_naturalTop;
+ (NSArray*) valuesArrayForChaChaGold_newYorkLSP;
+ (NSArray*) valuesArrayForChaChaGold_newYorkRSP;
+ (NSArray*) valuesArrayForChaChaGold_openBasic;
+ (NSArray*) valuesArrayForChaChaGold_openHipTwist;
+ (NSArray*) valuesArrayForChaChaGold_openingOutFromReverseTop;
+ (NSArray*) valuesArrayForChaChaGold_reverseTop;
+ (NSArray*) valuesArrayForChaChaGold_ropeSpinning;
+ (NSArray*) valuesArrayForChaChaGold_shoulderToShoulderL;
+ (NSArray*) valuesArrayForChaChaGold_shoulderToShoulderR;
+ (NSArray*) valuesArrayForChaChaGold_sideStepLwithLF;
+ (NSArray*) valuesArrayForChaChaGold_sideStepLwithRF;
+ (NSArray*) valuesArrayForChaChaGold_sideStepRwithLF;
+ (NSArray*) valuesArrayForChaChaGold_sideStepRwithRF;
+ (NSArray*) valuesArrayForChaChaGold_spiral;
+ (NSArray*) valuesArrayForChaChaGold_spiralHipTwist; //ADDED
+ (NSArray*) valuesArrayForChaChaGold_spotTurnL;
+ (NSArray*) valuesArrayForChaChaGold_spotTurnR;
+ (NSArray*) valuesArrayForChaChaGold_sweetheart; //ADDED
+ (NSArray*) valuesArrayForChaChaGold_switchTurnL;
+ (NSArray*) valuesArrayForChaChaGold_switchTurnR;
+ (NSArray*) valuesArrayForChaChaGold_thereAndBack;
+ (NSArray*) valuesArrayForChaChaGold_threeChasBack;
+ (NSArray*) valuesArrayForChaChaGold_threeChasForward;
+ (NSArray*) valuesArrayForChaChaGold_timeStepL;
+ (NSArray*) valuesArrayForChaChaGold_timeStepR;
+ (NSArray*) valuesArrayForChaChaGold_turkishTowel; //ADDED
+ (NSArray*) valuesArrayForChaChaGold_underarmTurnL;
+ (NSArray*) valuesArrayForChaChaGold_underarmTurnR;

@end
