//
//  ChoreoTableViewController.h
//  ChoreographyGenerator
//
//  Created by Noelle Fa-Kaji on 2/20/14.
//  Copyright (c) 2014 Noelle Fa-Kaji. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "choreographyDictionary.h"
#import "DanceMove.h"

@interface ChoreoTableViewController : UITableViewController

@property (nonatomic, retain) NSArray *choreographyItems;

@property NSString *danceStyle;
@property NSString *difficultyLevel;
@property int numberOfMoves;

//declaration for segue
//- (IBAction)generateDance:(UIStoryboardSegue *)segue;


- (void)setGenerationFieldsWithStyle:(NSString *) style andLevel:(NSString *) level andNumberOfMoves: (int) moves;
//- (void) loadChoreographyData;

@end
