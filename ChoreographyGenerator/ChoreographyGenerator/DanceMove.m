//
//  DanceMove.m
//  ChoreographyGenerator
//
//  Created by Latina Vidolova on 3/20/14.
//  Copyright (c) 2014 Noelle Fa-Kaji. All rights reserved.
//

#import "DanceMove.h"

@implementation DanceMove

//include move id? so can save routine eventually
-(id)initWithId:(NSString *) id andName:(NSString *)name andDescription:(NSString *)description
{
    self.name = name;
    self.description = description;
    return self;
}
@end