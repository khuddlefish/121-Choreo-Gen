//
//  choreographyDictionary.h
//  Dictionary v1
//
//  Created by Noelle Fa-Kaji on 2/13/14.
//  Copyright (c) 2014 Noelle Fa-Kaji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface choreographyDictionary : NSObject

@property NSString* danceStyle;
@property NSString* difficultyLevel;
@property NSDictionary* movesDictionary;

/*
 * danceStyleMenu: Shows the user what styles are available. Used for printing.
 *      Input: none
 *      Output: none
 */
+ (void) danceStyleMenu;

/*
 * difficultyLevelMenu: Shows the user what difficulty levels are available. Used for printing.
 *      Input: none
 *      Output: none
 */
+ (void) difficultyLevelMenu;

/*
 * setMovesDictionary: sets the movesDictionary property to the correct dictionary
 *      Input: none, but depends on the properties self.danceStyle and self.difficultyLevel
 *      Output: none, but updates self.movesDictionary
 */
- (void) setMovesDictionary;

/***********************************************
 *                                             *
 *           ENUMERATED DICTIONARIES           *
 *                                             *
 ***********************************************/
//---------------------------------------------
//                   Cha Cha                  |
//---------------------------------------------
+ (NSDictionary*) ChaChaBronzeDictionary;
//+ (NSDictionary*) ChaChaSilverDictionary;
//+ (NSDictionary*) ChaChaGoldDictionary;

//---------------------------------------------
//                     Waltz                  |
//---------------------------------------------

/*
 * getValuesArrayForChaChaBronzeMove: calls the correct method of next possible moves
 *      Input: an NSString* representing the move that is the dictionary key
 *      Output: an NSArray* (of NSString*) that are the possible next moves
 *
 */
+ (NSArray*) getValuesArrayForChaChaBronzeMove: (NSString*) move;
//Add other styles/levels
//+ (NSArray*) getValuesArrayForChaChaSilverMove: (NSString*) move;
//+ (NSArray*) getValuesArrayForChaChaGoldMove: (NSString*) move;

/***********************************************
 *                                             *
 *           ENUMERATED VALUE ARRAYS           *
 *                                             *
 ***********************************************/
//(Alphabetized by move for clarity)
//Adapted from information found at: www.dancecentral.info/ballroom/international-style/cha-cha-cha/

//---------------------------------------------
//               Cha Cha - Bronze             |
//---------------------------------------------
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
+ (NSArray*) valuesArrayForChaChaBronze_sideStep;
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


//---------------------------------------------
//               Cha Cha - Silver             |
//---------------------------------------------
//+ (NSArray*) valuesArrayForChaChaSilver_alemana;
//+ (NSArray*) valuesArrayForChaChaSilver_closedBasic;
//+ (NSArray*) valuesArrayForChaChaSilver_closedHipTwist;
//+ (NSArray*) valuesArrayForChaChaSilver_fan;
//+ (NSArray*) valuesArrayForChaChaSilver_handToHandLSP;
//+ (NSArray*) valuesArrayForChaChaSilver_handToHandRSP;
//+ (NSArray*) valuesArrayForChaChaSilver_hockeyStick;
//+ (NSArray*) valuesArrayForChaChaSilver_naturalOpeningOut;
//+ (NSArray*) valuesArrayForChaChaSilver_naturalTop;
//+ (NSArray*) valuesArrayForChaChaSilver_newYorkLSP;
//+ (NSArray*) valuesArrayForChaChaSilver_newYorkRSP;
//+ (NSArray*) valuesArrayForChaChaSilver_openBasic;
//+ (NSArray*) valuesArrayForChaChaSilver_shoulderToShoulderL;
//+ (NSArray*) valuesArrayForChaChaSilver_shoulderToShoulderR;
//+ (NSArray*) valuesArrayForChaChaSilver_sideStep;
//+ (NSArray*) valuesArrayForChaChaSilver_spotTurnL;
//+ (NSArray*) valuesArrayForChaChaSilver_spotTurnR;
//+ (NSArray*) valuesArrayForChaChaSilver_switchTurnL;
//+ (NSArray*) valuesArrayForChaChaSilver_switchTurnR;
//+ (NSArray*) valuesArrayForChaChaSilver_thereAndBack;
//+ (NSArray*) valuesArrayForChaChaSilver_threeChasBack;
//+ (NSArray*) valuesArrayForChaChaSilver_threeChasForward;
//+ (NSArray*) valuesArrayForChaChaSilver_timeStepL;
//+ (NSArray*) valuesArrayForChaChaSilver_timeStepR;
//+ (NSArray*) valuesArrayForChaChaSilver_underarmTurnL;
//+ (NSArray*) valuesArrayForChaChaSilver_underarmTurnR;


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

/*
 * chooseAMoveAfter: chooses the next move for the choreography
 *      Input: a NSString* representing the previous move
 *      Output: a NSString* representing the next move chosen
 */
- (NSString*) chooseAMoveAfter: (NSString*) previousMove;


@end
