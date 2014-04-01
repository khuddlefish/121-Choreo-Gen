//
//  Database.h
//  Choreography
//
//  Created by Latina Vidolova on 3/20/14.
//  Copyright (c) 2014 Latina Vidolova All rights reserved.
//

#import <Foundation/Foundation.h>

#import <sqlite3.h>

@interface Database : NSObject


@property NSString *selectedStyle;
@property NSString *selectedLevel;
@property int *selectedNumberOfMoves;

+ (void)createEditableCopyOfDatabaseIfNeeded;
- (void)initDatabase;

+ (NSMutableArray *)generateRoutine;
+ (NSMutableArray *)fetchRoutineMoves;
-(NSMutableArray *) testingGiveRoutineArray;

+ (void)cleanUpDatabaseForQuit;

@end