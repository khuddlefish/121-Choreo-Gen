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
+ (NSDictionary*) ChaChaBronzeDictionary;
//+ (NSDictionary*) ChaChaSilverDictionary;
//+ (NSDictionary*) ChaChaGoldDictionary;

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
//CHA CHA -- BRONZE
+ (NSArray*) valuesArrayForChaChaBronze_alemana;
+ (NSArray*) valuesArrayForChaChaBronze_closedBasic;
+ (NSArray*) valuesArrayForChaChaBronze_closedHipTwist;
+ (NSArray*) valuesArrayForChaChaBronze_fan;
+ (NSArray*) valuesArrayForChaChaBronze_handToHand;
+ (NSArray*) valuesArrayForChaChaBronze_hockeyStick;
+ (NSArray*) valuesArrayForChaChaBronze_naturalOpeningOut;
+ (NSArray*) valuesArrayForChaChaBronze_naturalTop;
+ (NSArray*) valuesArrayForChaChaBronze_newYorkLSP;
+ (NSArray*) valuesArrayForChaChaBronze_newYorkRSP;
+ (NSArray*) valuesArrayForChaChaBronze_openBasic;
+ (NSArray*) valuesArrayForChaChaBronze_shoulderToShoulder;
+ (NSArray*) valuesArrayForChaChaBronze_sideStep;
+ (NSArray*) valuesArrayForChaChaBronze_spotTurn;
+ (NSArray*) valuesArrayForChaChaBronze_switchTurn;
+ (NSArray*) valuesArrayForChaChaBronze_thereAndBack;
+ (NSArray*) valuesArrayForChaChaBronze_threeChasBack;
+ (NSArray*) valuesArrayForChaChaBronze_threeChasForward;
+ (NSArray*) valuesArrayForChaChaBronze_timeStep;


//CHA CHA -- SILVER
//+ (NSArray*) valuesArrayForChaChaSilver_alemana;
//+ (NSArray*) valuesArrayForChaChaSilver_closedBasic;
//+ (NSArray*) valuesArrayForChaChaSilver_closedHipTwist;
//+ (NSArray*) valuesArrayForChaChaSilver_fan;
//+ (NSArray*) valuesArrayForChaChaSilver_handToHand;
//+ (NSArray*) valuesArrayForChaChaSilver_hockeyStick;
//+ (NSArray*) valuesArrayForChaChaSilver_naturalOpeningOut;
//+ (NSArray*) valuesArrayForChaChaSilver_naturalTop;
//+ (NSArray*) valuesArrayForChaChaSilver_newYorkRSP;
//+ (NSArray*) valuesArrayForChaChaSilver_newYorkLSP;
//+ (NSArray*) valuesArrayForChaChaSilver_openBasic;
//+ (NSArray*) valuesArrayForChaChaSilver_shoulderToShoulder;
//+ (NSArray*) valuesArrayForChaChaSilver_sideStep;
//+ (NSArray*) valuesArrayForChaChaSilver_spotTurn;
//+ (NSArray*) valuesArrayForChaChaSilver_switchTurn;
//+ (NSArray*) valuesArrayForChaChaSilver_thereAndBack;
//+ (NSArray*) valuesArrayForChaChaSilver_threeChasBack;
//+ (NSArray*) valuesArrayForChaChaSilver_threeChasForward;
//+ (NSArray*) valuesArrayForChaChaSilver_timeStepAndBack;
//+ (NSArray*) valuesArrayForChaChaSilver_timeStep;

//CHA CHA -- Gold
//+ (NSArray*) valuesArrayForChaChaGold_alemana;
//+ (NSArray*) valuesArrayForChaChaGold_closedBasic;
//+ (NSArray*) valuesArrayForChaChaGold_closedHipTwist;
//+ (NSArray*) valuesArrayForChaChaGold_fan;
//+ (NSArray*) valuesArrayForChaChaGold_handToHand;
//+ (NSArray*) valuesArrayForChaChaGold_hockeyStick;
//+ (NSArray*) valuesArrayForChaChaGold_naturalOpeningOut;
//+ (NSArray*) valuesArrayForChaChaGold_naturalTop;
//+ (NSArray*) valuesArrayForChaChaGold_newYorkRSP;
//+ (NSArray*) valuesArrayForChaChaGold_newYorkLSP;
//+ (NSArray*) valuesArrayForChaChaGold_openBasic;
//+ (NSArray*) valuesArrayForChaChaGold_shoulderToShoulder;
//+ (NSArray*) valuesArrayForChaChaGold_sideStep;
//+ (NSArray*) valuesArrayForChaChaGold_spotTurn;
//+ (NSArray*) valuesArrayForChaChaGold_switchTurn;
//+ (NSArray*) valuesArrayForChaChaGold_thereAndBack;
//+ (NSArray*) valuesArrayForChaChaGold_threeChasBack;
//+ (NSArray*) valuesArrayForChaChaGold_threeChasForward;
//+ (NSArray*) valuesArrayForChaChaGold_timeStepAndBack;
//+ (NSArray*) valuesArrayForChaChaGold_timeStep;

/*
 * chooseAMoveAfter: chooses the next move for the choreography
 *      Input: a NSString* representing the previous move
 *      Output: a NSString* representing the next move chosen
 */
- (NSString*) chooseAMoveAfter: (NSString*) previousMove;


@end
