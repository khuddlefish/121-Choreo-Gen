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
    NSLog(nextMoveIDString);
    return nextMoveIDString;
}

- (NSArray *)generateRoutine {
    
    Database *ChaChaDB = [[Database alloc] initDatabase];
    
    //Hard code for testing
    self.selectedStyle = @"ChaCha";
    self.selectedLevel = @"Bronze";
    self.selectedNumberOfMoves = 20;

    NSMutableArray *routine = [[NSMutableArray alloc] init];
    
    //Begin with a basic
    NSString *move = @"basicOpen";
    
    for (int i=0; i < self.selectedNumberOfMoves; i++) {
        [routine addObject:move];
        int pref = 01; //[Database randomizePreference:move]
        move = [ChaChaDB getMoveAfter:move withPreference:pref];
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