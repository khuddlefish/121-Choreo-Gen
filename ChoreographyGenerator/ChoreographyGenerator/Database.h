//
//  Database.h
//  Choreography
//
//  Created by Latina Vidolova on 3/20/14.
//  Copyright (c) 2014 Latina Vidolova All rights reserved.
//

#import <Foundation/Foundation.h>

#import <sqlite3.h>
#import "DanceMove.h"

@interface Database : NSObject {
    sqlite3 *_database;
}

+ (Database*)database;
- (NSMutableArray*)generateRoutine;
@end