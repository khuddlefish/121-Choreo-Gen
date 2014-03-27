//
//  DanceMove.h
//  ChoreographyGenerator
//
//  Created by Latina Vidolova on 3/20/14.
//  Copyright (c) 2014 Noelle Fa-Kaji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DanceMove : NSObject

@property NSString *name;
@property NSString *description;

-(id)initWithName:(NSString *)name andDescription:(NSString *)description;


@end
