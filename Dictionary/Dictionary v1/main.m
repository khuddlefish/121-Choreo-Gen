//
//  main.m
//  Dictionary v1
//
//  Created by Noelle Fa-Kaji on 2/13/14.
//  Copyright (c) 2014 Noelle Fa-Kaji. All rights reserved.
//

#import <stdio.h>
#import <Foundation/Foundation.h>
#import "choreographyDictionary.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        int LENGTH_OF_USER_INPUT = 40; //This is the maximum number of characters for user input
            
        //Gets the dance style from the user
        //This should be one word no spaces, each word uppercase
        [choreographyDictionary danceStyleMenu];
        NSLog(@"Pick a dance style: ");
        char cstring[LENGTH_OF_USER_INPUT];
        scanf("%s", cstring);
        NSString *danceStyle = [NSString stringWithCString:cstring encoding:1];
        
        //Gets the difficulty level from the user
        [choreographyDictionary difficultyLevelMenu];
        NSLog(@"Pick a difficulty level: ");
        char cstring2[LENGTH_OF_USER_INPUT];
        scanf("%s", cstring2);
        NSString *difficultyLevel = [NSString stringWithCString:cstring2 encoding:1];
        
        //Gets a desired length for the routine
        int numberOfMoves;
        NSLog(@"Pick a desired number of moves:");
        scanf("%i", &numberOfMoves);
        
        //Sets up the dictionary with the correct moves
        choreographyDictionary *choreography = [[choreographyDictionary alloc] init];
        [choreography setDanceStyle: danceStyle];            //sets dance style property
        [choreography setDifficultyLevel: difficultyLevel];  //sets difficulty level property
        [choreography setMovesDictionary];                     //sets the dictionary property

//        //Sets up the dictionary with the correct moves --- FOR TESTING ONLY
//        choreographyDictionary *choreography = [[choreographyDictionary alloc] init];
//        [choreography setDanceStyle: @"ChaCha"];            //sets dance style property
//        [choreography setDifficultyLevel: @"Bronze"];       //sets difficulty level property
//        [choreography setMovesDictionary];                    //sets the dictionary property

        //Generates choreography, starting with a basic
        //NSMutableArray* choreographyArray = [[NSMutableArray alloc] init];
        NSString * previousMove = @"closedBasic";
        for (int i = 0; i < numberOfMoves; ++i) {
            NSLog(@"%@", previousMove);
            //[choreographyArray addObject: previousMove]; //save the sequence
            previousMove = [choreography chooseAMoveAfter: previousMove];
        }
        
        
        
        
    }
    return 0;
}

