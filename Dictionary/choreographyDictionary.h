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

//Shows the user what styles are available
+ (void) danceStyleMenu;

//Shows the user what difficulty levels are available
+ (void) difficultyLevelMenu;

//Instance method to define the dictionaries of moves
- (void) defineDictionary;

//Chooses the next move
- (NSString*) chooseAMoveAfter: (NSString*) previousMove;


@end
