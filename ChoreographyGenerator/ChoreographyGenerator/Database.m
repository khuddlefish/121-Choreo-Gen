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
        _database = [[Database alloc] init];
    }
    return _database;
}

- (id)init {
    if ((self = [super init])) {
        NSString *sqliteDb = [[NSBundle mainBundle] pathForResource:@"choreography" ofType:@"db"];
        if (sqlite3_open([sqliteDb UTF8String], &_database) != SQLITE_OK) {
            NSLog(@"Failed to open database!");
        }
    }
    return self;
}

- (void)cleanUpDatabase {
    sqlite3_close(_database);
}

@end