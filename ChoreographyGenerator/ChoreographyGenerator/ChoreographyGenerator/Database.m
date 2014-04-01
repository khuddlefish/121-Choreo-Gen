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

@property int numberOfMovesAfter;

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
    
    char *moveCharacters = [move UTF8String];
    
    //get the preference
    char *nextMovePreferenceString = "SELECT COUNT(*) FROM Move_Seq_ChaCha WHERE level=%@, move_id=%@",self.selectedLevel, *moveCharacters;
    
    if (sqlite3_prepare_v2(db, nextMovePreferenceString, -1, &nextMovePreference, NULL) != SQLITE_OK) {
        NSLog(@"ERROR: failed to generate prefernce for next move statement");
    }
}

- (NSString*) getMoveAfter: (NSString*) move withPreference: (int) preference {
    
    char *moveCharacters = [move UTF8String];
    
    //generate next move--level should be passed as a constant to this class
    char *selectNextMoveString = "SELECT next_move_id FROM Move_Seq_ChaCha WHERE level=%@, move_id=%@, preference=%@", [self selectedLevel], moveCharacters, preference;
    
    if (sqlite3_prepare_v2(db, selectNextMoveString, -1, &selectNextMove, NULL) != SQLITE_OK) {
        NSLog(@"ERROR: failed to prepare generate next move statement");
    }
    
    return selectNextMoveString;
}

- (NSString*) getMoveInformation: (NSString*)move {
    
    char *moveCharacters = [move UTF8String];
    
    //fetch a move's stuff
    char *fetchMoveString = "SELECT move_name, move_desc FROM Moves_ChaCha WHERE move_id=%@", moveCharacters;
    
    if (sqlite3_prepare_v2(db, fetchMoveString, -1, &fetchMove, NULL) != SQLITE_OK) {
        NSLog(@"ERROR: failed to prepare move fetching statement");
    }
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
    NSString* move = "basicOpen";
    char *moveCharacters = [move UTF8String];
    
    //loop
    for (int i =0; i<ChaChaDB.selectedNumberOfMoves; ++i) {
        [routine addObject:move];
        int pref = [ChaChaDB randomizePreference:move];
        move = [ChaChaDB getMoveAfter:move withPreference:pref];
    }
    
    //sqlite3_step(selectNextMove) with new preference, previous move (temp)
    //NSString *temp = resulting move id
    //[routine addObject: temp];
    
    return routine;
}


+ (NSMutableArray *) generateRoutineStartingWith: (char*) move{
    NSMutableArray *routine = [NSMutableArray arrayWithCapacity:0];
    //init database
    
    //Start with a basic
    char* move = "basicOpen";
    //loop
    //generate next preference
    //sqlite3_step(selectNextMove) with new preference, previous move (temp)
    //NSString *temp = resulting move id
    //[routine addObject: temp];
    
    
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



+ (void)cleanUpDatabaseForQuit
{
    // finalize frees the compiled statements, close closes the database connection
    sqlite3_finalize(selectNextMove);
    sqlite3_finalize(fetchMove);
    sqlite3_close(db);
}

@end