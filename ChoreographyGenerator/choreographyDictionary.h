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
+ (NSDictionary*) ChaChaGoldDictionary;

//---------------------------------------------
//                     Waltz                  |
//---------------------------------------------







@end
