//
//  Database.m
//  Choreography
//
//  Created by Latina Vidolova on 3/20/14.
//  Copyright (c) 2014 Latina Vidolova All rights reserved.
//

//

#import "Database.h"
#import <sqlite3.h>


@implementation Database

static sqlite3 *db;

static sqlite3_stmt *createImage;
static sqlite3_stmt *fetchImage;
static sqlite3_stmt *insertImage;
static sqlite3_stmt *editImage;
static sqlite3_stmt *deleteImage;

+ (void)createEditableCopyOfDatabaseIfNeeded {
    BOOL success;
    
    // look for an existing contacts database
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSError *error;
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentDirectory = [paths objectAtIndex:0];
    NSString *writableDBPath = [documentDirectory stringByAppendingPathComponent:@"choreography.sql"];
    success = [fileManager fileExistsAtPath:writableDBPath];
    if (success) return;
    
    // if failed to find one, copy the empty contacts database into the location
    NSString *defaultDBPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"choreography.sql"];
    success = [fileManager copyItemAtPath:defaultDBPath toPath:writableDBPath error:&error];
    if (!success) {
        NSAssert1(0, @"FAILED to create writable database file with message, '%@'.", [error localizedDescription]);
    }
}

+ (void)initDatabase {

    
    // create the path to the database
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentDirectory = [paths objectAtIndex:0];
    NSString *path = [documentDirectory stringByAppendingPathComponent:@"choreography.sql"];
    
    // open the database connection
    if (sqlite3_open([path UTF8String], &db)) {
        NSLog(@"ERROR opening the db");
    }

    // create the statement strings
    
    
    //init statements
}




+ (void)cleanUpDatabaseForQuit
{
    // finalize frees the compiled statements, close closes the database connection
//    sqlite3_finalize(fetchImage);
    sqlite3_close(db);
}

@end
