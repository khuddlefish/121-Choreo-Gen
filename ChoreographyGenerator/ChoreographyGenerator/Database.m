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

- (NSArray *)generateRoutine {

NSMutableArray *routine = [[NSMutableArray alloc] init];
NSString *query = @"select next_move_id from Moves_Seq_ChaCha where level='Silver' and move_id = 'basicOpen'";

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
    }
    return routine;
}




/*
-(void)getSQLiteData:(NSString *)dbPath
{
    NSMutableArray *routine = [NSMutableArray array];
    
    self.selectedStyle = @"ChaCha";
    self.selectedLevel = @"Silver";
    self.selectedNumberOfMoves = 20;
    
    NSString* move = @"basicOpen";
    
    
    
    _sqliteData = [[NSMutableArray alloc] init];
    sqlite3 *database;
    if (sqlite3_open([dbPath UTF8String], &database) == SQLITE_OK) {
        const char *sql = "select next_move_id from Moves_Seq_ChaCha where level=Silver and move_id = basicOpen";
        sqlite3_stmt *selectStatement;
        if(sqlite3_prepare_v2(database, sql, -1, &selectStatement, NULL) == SQLITE_OK) {
            while(sqlite3_step(selectStatement) == SQLITE_ROW) {
                NSString *moveName = [NSString stringWithUTF8String:(char *)sqlite3_column_text(selectStatement, 0)];
                [_sqliteData addObject:moveName];
            }
        }
    }
    sqlite3_close(database);
}
 */

- (void)cleanUpDatabase {
    sqlite3_close(_database);
}

@end