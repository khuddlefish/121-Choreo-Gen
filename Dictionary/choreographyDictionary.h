//
//  choreographyDictionary.h
//  Dictionary v1
//
//  Created by Noelle Fa-Kaji on 2/13/14.
//  Copyright (c) 2014 Noelle Fa-Kaji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "chaChaBronze.h"
#import "chaChaSilver.h"

@interface choreographyDictionary : NSObject

@property NSString* danceStyle;
@property NSString* difficultyLevel;
@property NSDictionary* movesDictionary;


/*
 * setMovesDictionary: sets the movesDictionary property to the correct dictionary
 *      Input: none, but depends on the properties self.danceStyle and self.difficultyLevel
 *      Output: none, but updates self.movesDictionary
 */
- (void) setMovesDictionary;

/*
 * chooseAMoveAfter: chooses the next move for the choreography
 *      Input: a NSString* representing the previous move
 *      Output: a NSString* representing the next move chosen
 */
- (NSString*) chooseAMoveAfter: (NSString*) previousMove;

/*
 * getNextArray: gets the array of next possible moves after a given step of choreography
 *      Input: a NSString* representing the previous move
 *      Output: a NSArray* representing the next possible moves
 */
- (NSArray*) getNextArray: (NSString*) previousMove;


/***********************************************
 *                                             *
 *           ENUMERATED DICTIONARIES           *
 *                                             *
 ***********************************************/
//---------------------------------------------
//                   Cha Cha                  |
//---------------------------------------------
+ (NSDictionary*) ChaChaBronzeDictionary;
+ (NSDictionary*) ChaChaSilverDictionary;
//+ (NSDictionary*) ChaChaGoldDictionary;

//---------------------------------------------
//                     Waltz                  |
//---------------------------------------------



//---------------------------------------------
//                Cha Cha - Gold              |
//---------------------------------------------
//+ (NSArray*) valuesArrayForChaChaGold_alemana;
//+ (NSArray*) valuesArrayForChaChaGold_closedBasic;
//+ (NSArray*) valuesArrayForChaChaGold_closedHipTwist;
//+ (NSArray*) valuesArrayForChaChaGold_fan;
//+ (NSArray*) valuesArrayForChaChaGold_handToHandLSP;
//+ (NSArray*) valuesArrayForChaChaGold_handToHandRSP;
//+ (NSArray*) valuesArrayForChaChaGold_hockeyStick;
//+ (NSArray*) valuesArrayForChaChaGold_naturalOpeningOut;
//+ (NSArray*) valuesArrayForChaChaGold_naturalTop;
//+ (NSArray*) valuesArrayForChaChaGold_newYorkLSP;
//+ (NSArray*) valuesArrayForChaChaGold_newYorkRSP;
//+ (NSArray*) valuesArrayForChaChaGold_openBasic;
//+ (NSArray*) valuesArrayForChaChaGold_shoulderToShoulderL;
//+ (NSArray*) valuesArrayForChaChaGold_shoulderToShoulderR;
//+ (NSArray*) valuesArrayForChaChaGold_sideStep;
//+ (NSArray*) valuesArrayForChaChaGold_spotTurnL;
//+ (NSArray*) valuesArrayForChaChaGold_spotTurnR;
//+ (NSArray*) valuesArrayForChaChaGold_switchTurnL;
//+ (NSArray*) valuesArrayForChaChaGold_switchTurnR;
//+ (NSArray*) valuesArrayForChaChaGold_thereAndBack;
//+ (NSArray*) valuesArrayForChaChaGold_threeChasBack;
//+ (NSArray*) valuesArrayForChaChaGold_threeChasForward;
//+ (NSArray*) valuesArrayForChaChaGold_timeStepL;
//+ (NSArray*) valuesArrayForChaChaGold_timeStepR;
//+ (NSArray*) valuesArrayForChaChaGold_underarmTurnL;
//+ (NSArray*) valuesArrayForChaChaGold_underarmTurnR;



@end
