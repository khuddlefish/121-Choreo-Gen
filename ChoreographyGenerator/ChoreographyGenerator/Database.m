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


static Database *_database;

+ (Database*)database {
    if(_database == nil) {
        _database = [[Database alloc] initDatabase];
    }
    return _database;
}

- (id)initDatabase {
    if ((self = [super init])) {
        NSString *sqliteDb = [[NSBundle mainBundle] pathForResource:@"choreography" ofType:@"sqlite3"];
        if (sqlite3_open([sqliteDb UTF8String], &_database) != SQLITE_OK) {
            NSLog(@"Failed to open database!");
        } else {
            NSLog(@"Database okay!");
        }
    }
    return self;
}


- (int) randomizePreference: (NSString*) move {
    
    NSString *currentLevel = [self selectedLevel];
    int count = 0;
    int choice = 0;
    
    //get the preference
    NSString *nextMovePreferenceString = [NSString stringWithFormat: @"SELECT COUNT(*) FROM Move_Seq_ChaCha WHERE level='%@' AND move_id='%@'", currentLevel, move];
    
    sqlite3_stmt *statement;
    if 	(sqlite3_prepare_v2(_database, [nextMovePreferenceString UTF8String], -1, &statement, nil) == SQLITE_OK) {
        while (sqlite3_step(statement) == SQLITE_ROW) {
            
            count = sqlite3_column_int(statement, 0);
            choice = arc4random_uniform(count) + 1;
            if (choice > count) {
                NSLog(@"ERROR: Chose an element that is too large");
                break;
            }
        }
    }
    
    else {
        NSLog(@"ERROR: %s", sqlite3_errmsg(_database));
        NSLog(@"ERROR: failed to generate preference for next move statement");
    }
    
    sqlite3_finalize(statement);
    return choice;
}



- (NSString*) getMoveAfter: (NSString*) move withPreference: (int) preference {
    
    NSString *nextMoveIDString;
    
    //generate next move--level should be passed as a constant to this class
    NSString *selectNextMoveString = [NSString stringWithFormat: @"SELECT next_move_id FROM Move_Seq_ChaCha WHERE level='%@' AND move_id='%@' AND preference=%d", self.selectedLevel, move, preference];
    
    sqlite3_stmt *statement;
    if (sqlite3_prepare_v2(_database, [selectNextMoveString UTF8String], -1, &statement, nil) == SQLITE_OK) {
        while (sqlite3_step(statement) == SQLITE_ROW) {
            char *nextMoveID = (char*) sqlite3_column_text(statement, 0);
            nextMoveIDString= [[NSString alloc] initWithUTF8String:nextMoveID];
        }
        sqlite3_finalize(statement);
    }
    else {
        NSLog(@"ERROR: failed to get next move");
        NSLog(@"ERROR: %s", sqlite3_errmsg(_database));
    }
    
    //NSLog(@"%@", nextMoveIDString);
    return nextMoveIDString;
}



- (DanceMove*) getMoveInformation: (NSString*) move
{
    NSString *moveNameString;
    NSString *moveDescString;
    DanceMove *moveInfo;
    
    //fetch a move's information
    NSString *fetchMoveString = [NSString stringWithFormat:@"SELECT move_name, move_desc FROM Moves_ChaCha WHERE move_id='%@'", move];
    
    sqlite3_stmt *statement;
    if (sqlite3_prepare_v2(_database, [fetchMoveString UTF8String], -1, &statement, nil) == SQLITE_OK) {
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
        NSLog(@"ERROR: %s", sqlite3_errmsg(_database));
    }
    
    sqlite3_finalize(statement);
    return moveInfo;

}




- (NSArray *)generateRoutine {

    NSMutableArray *routine = [[NSMutableArray alloc] init];
    
    //Begin with a basic
    NSString *move_id = @"basicOpen";
    
    for (int i=0; i < self.selectedNumberOfMoves; i++) {
        DanceMove* move = [self getMoveInformation:move_id];
        [routine addObject:move];
        //int pref = 01;
        int pref = [self randomizePreference:move_id];
        move_id = [self getMoveAfter:move_id withPreference:pref];
    }
    return routine;
}

   /*
NSString *query = @"select next_move_id from Move_Seq_ChaCha where level='Silver' and move_id = 'basicOpen'";

    sqlite3_stmt *statement;
    if (sqlite3_prepare_v2(_database, [query UTF8String], -1, &statement, nil) == SQLITE_OK) {
        while (sqlite3_step(statement) == SQLITE_ROW) {
            char *next_move_chars = (char *) sqlite3_column_text(statement, 0);
            NSString *next_move = [[NSString alloc] initWithUTF8String:next_move_chars];
            [routine addObject:next_move];
        }
        sqlite3_finalize(statement);
    }
    else {
        NSLog (@"statement failed");
        NSLog(@"ERROR: %s", sqlite3_errmsg(_database));
    }
    return routine;
}
    */

- (void)cleanUpDatabase {
    sqlite3_close(_database);
}

@end