//
//  ChoreoTableViewController.m
//  ChoreographyGenerator
//
//  Created by Noelle Fa-Kaji on 2/20/14.
//  Copyright (c) 2014 Noelle Fa-Kaji. All rights reserved.
//

#import "ChoreoTableViewController.h"
#import "choreographyDictionary.h"
#import "SelectDanceViewController.h"
#import "Database.h"
#import "MoveDetailsViewController.h"

@interface ChoreoTableViewController ()

@end

@implementation ChoreoTableViewController

-(void)setGenerationFieldsWithStyle:(NSString *) style andLevel:(NSString *) level andNumberOfMoves: (int) moves{
    self.danceStyle = style;
    self.difficultyLevel = level;
    self.numberOfMoves = moves;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.choreographyItems = [Database database].generateRoutine;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.choreographyItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"ChoreographyPrototypeCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    NSString *move = [_choreographyItems objectAtIndex:indexPath.row];
    cell.textLabel.text = move;
    
    /*
    DanceMove *temp = [self.choreographyItems objectAtIndex:indexPath.row];
   
    [[cell textLabel] setText:[NSString stringWithFormat:@"%@", temp.name]];
    
    [[cell detailTextLabel] setText:[NSString stringWithFormat:@"%@", temp.description]];
    */
    return cell;
}


//sets navigation bar to be visible
- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.hidden = NO;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation
//when a cell is selected, give the dance move details to the details view
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"Details"]) {

        //get selected move
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DanceMove *currentDanceMove = [self.choreographyItems objectAtIndex:indexPath.row];
        
        //set details view fields
        MoveDetailsViewController *moveDetVC = segue.destinationViewController;
        moveDetVC.moveDescString = currentDanceMove.description;
        moveDetVC.moveNameString = currentDanceMove.name;
    }
}




@end
