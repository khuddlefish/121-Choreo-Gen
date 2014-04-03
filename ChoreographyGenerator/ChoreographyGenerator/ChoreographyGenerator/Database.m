//
//  Database.m
//  Choreography
//
//  Created by Latina Vidolova on 3/20/14.
//  Copyright (c) 2014 Latina Vidolova All rights reserved.
//

#import "Database.h"
#import <sqlite3.h>

@interface Database()

@end


@implementation Database


static sqlite3 *db;

static sqlite3_stmt *selectNextMove;
static sqlite3_stmt *fetchMove;


+ (void)createEditableCopyOfDatabaseIfNeeded {
    BOOL success;
    
    // look for an existing choreo database
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSError *error;
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentDirectory = [paths objectAtIndex:0];
    NSString *writableDBPath = [documentDirectory stringByAppendingPathComponent:@"choreography.sql"];
    success = [fileManager fileExistsAtPath:writableDBPath];
    if (success) return;
    
    // if failed to find one, copy the empty choreo database into the location
    NSString *defaultDBPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"choreography.sql"];
    success = [fileManager copyItemAtPath:defaultDBPath toPath:writableDBPath error:&error];
    if (!success) {
        NSAssert1(0, @"FAILED to create writable database file with message, '%@'.", [error localizedDescription]);
    }
}



- (void)initDatabase {
    
    // create the path to the database
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentDirectory = [paths objectAtIndex:0];
    NSString *path = [documentDirectory stringByAppendingPathComponent:@"choreography.sql"];
    
    // open the database connection
    if (sqlite3_open([path UTF8String], &db)) {
        NSLog(@"ERROR opening the db");
    }
    
}

- (int) randomizePreference: (NSString*) move {
    
    NSString *currentLevel = [self selectedLevel];
    int count = 0;
    
    //get the preference
     NSString *nextMovePreferenceString = [NSString stringWithFormat: @"SELECT COUNT(*) FROM Move_Seq_ChaCha WHERE level=%@ AND move_id=%@", currentLevel, move];
    
    sqlite3_stmt *statement;
    if (sqlite3_prepare_v2(db, [nextMovePreferenceString UTF8String], -1, &statement, nil) == SQLITE_OK) {
        while (sqlite3_step(statement) == SQLITE_ROW) {
            
            count = sqlite3_column_int(statement, 0);
            
            //randomize choosing 1 to count
        }
    }
    
    else {
        NSLog(@"ERROR: failed to generate preference for next move statement");
    }
    
    sqlite3_finalize(statement);
    return count;
}

- (NSString*) getMoveAfter: (NSString*) move withPreference: (int) preference {
    
    NSString *currentLevel = [self selectedLevel];
    NSString *nextMoveIDString;
    
    //generate next move--level should be passed as a constant to this class
    NSString *selectNextMoveString = [NSString stringWithFormat: @"SELECT next_move_id FROM Move_Seq_ChaCha WHERE level=%@ AND move_id=%@ AND preference=%d", currentLevel, move, preference];
    
    sqlite3_stmt *statement;
    if (sqlite3_prepare_v2(db, [selectNextMoveString UTF8String], -1, &statement, nil) == SQLITE_OK) {
        while (sqlite3_step(statement) == SQLITE_ROW) {
            char *nextMoveID = (char*) sqlite3_column_text(statement, 0);
            nextMoveIDString= [NSString stringWithUTF8String:nextMoveID];
        }

    }
    else {
        NSLog(@"ERROR: failed to prepare generate next move statement");
    }
    
    sqlite3_finalize(statement);
    return nextMoveIDString;
}


- (DanceMove*) getMoveInformation: (NSString*) move {
    NSString *moveNameString;
    NSString *moveDescString;
    DanceMove *moveInfo;
    
    
    //fetch a move's stuff
    NSString *fetchMoveString = [NSString stringWithFormat:@"SELECT move_name, move_desc FROM Moves_ChaCha WHERE move_id=%@", move];
    
    sqlite3_stmt *statement;
    if (sqlite3_prepare_v2(db, [fetchMoveString UTF8String], -1, &statement, nil) == SQLITE_OK) {
        while (sqlite3_step(statement) == SQLITE_ROW) {
            char *moveName = (char*) sqlite3_column_text(statement, 0);
            char *moveDesc = (char*) sqlite3_column_text(statement, 1);
            moveNameString = [NSString stringWithUTF8String:moveName];
            moveDescString = [NSString stringWithUTF8String:moveDesc];
            
            //create Move object
            moveInfo = [[DanceMove alloc] initWithId: move andName:moveNameString andDescription:moveDescString];

        }
    }
    
    else {
        NSLog(@"ERROR: failed to prepare move fetching statement");
    }
    
    sqlite3_finalize(statement);
    return moveInfo;
}



+ (NSMutableArray *) generateRoutine{
    NSMutableArray *routine = [NSMutableArray arrayWithCapacity:0];
    
    //init database
    Database *ChaChaDB = [Database new];
    
    //hard code routine pre-sets for now
    ChaChaDB.selectedStyle = @"ChaCha";
    ChaChaDB.selectedLevel = @"Silver";
    ChaChaDB.selectedNumberOfMoves = 4;
    
    [ChaChaDB initDatabase];
    
    //Start with a basic
    NSString* move = @"basicOpen";
    
    //loop
    for (int i =0; i<ChaChaDB.selectedNumberOfMoves; ++i) {
        [routine addObject:move];
        int pref = [ChaChaDB randomizePreference:move];
        move = [ChaChaDB getMoveAfter:move withPreference:pref];
    }
    
    [ChaChaDB cleanUpDatabaseForQuit];
    
    return routine;
}


+ (NSMutableArray *) generateRoutineStartingWith: (NSString*) move {
    NSMutableArray *routine = [NSMutableArray arrayWithCapacity:0];
    
    //init database
    Database *ChaChaDB = [Database new];
    
    //hard code routine pre-sets for now
    ChaChaDB.selectedStyle = @"ChaCha";
    ChaChaDB.selectedLevel = @"Silver";
    ChaChaDB.selectedNumberOfMoves = 4;
    
    [ChaChaDB initDatabase];
    
    //loop
    for (int i =0; i<ChaChaDB.selectedNumberOfMoves; ++i) {
        [routine addObject:move];
        int pref = [ChaChaDB randomizePreference:move];
        move = [ChaChaDB getMoveAfter:move withPreference:pref];
    }
    
    [ChaChaDB cleanUpDatabaseForQuit];
    
    return routine;
}


+ (NSMutableArray *)fetchRoutineMoves
{
    NSMutableArray *routine = [NSMutableArray arrayWithCapacity:0];
    
    //either generate routine or receive generated routine as parameter
    
    //for every index in array,
    //sqlite3_step(fetchMove) with that index
    
    // query columns from fetch statement
    //char *nameChars = (char *) sqlite3_column_text(fetchMove, 1);
    //char *descChars = (char *) sqlite3_column_text(fetchMove, 2);
    
    // convert to NSStrings
    //NSString *tempName = [NSString stringWithUTF8String:nameChars];
    //NSString *tempDesc = [NSString stringWithUTF8String:descChars];
    
    //create Move object
    //DanceMove *temp = [[DanceMove alloc] initWithId: id andName:tempName andDescription:tempDesc];
    //[routine addObject:temp];
    
    
    
    sqlite3_reset(fetchMove);
    return routine;
}



- (void)cleanUpDatabaseForQuit
{
    // finalize frees the compiled statements, close closes the database connection
//    sqlite3_finalize(selectNextMove);
//    sqlite3_finalize(fetchMove);
    sqlite3_close(db);
}

@end