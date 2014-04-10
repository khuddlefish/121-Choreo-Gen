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

@property NSMutableArray *choreographyItems;

//planning to move these properties to SelectDanceViewController
@property NSString *danceStyle;
@property NSString *difficultyLevel;
@property int numberOfMoves;

@end

@implementation ChoreoTableViewController


//FOR TESTING
- (void) loadChoreographyData
{
    
//    [self.choreographyItems addObject:@"openBasic"];
//    [self.choreographyItems addObject:@"spotTurnL"];
//    [self.choreographyItems addObject:@"openBasic"];

    
    
    //For testing -- For the app these should come from actual button presses
//    self.danceStyle = @"ChaCha";
//    self.difficultyLevel = @"Bronze";
//    self.numberOfMoves = 20;
    
    choreographyDictionary *choreography = [[choreographyDictionary alloc] init];
    [choreography setDanceStyle: self.danceStyle];            //sets dance style property
    [choreography setDifficultyLevel: self.difficultyLevel];  //sets difficulty level property
    [choreography setMovesDictionary];                     //sets the dictionary property
    
    //Generates choreography, starting with a basic
    //NSString * previousMove = @"closedBasic";
    //for (int i = 0; i < self.numberOfMoves; ++i) {
    //    [self.choreographyItems addObject: previousMove]; //save the sequence
    //    previousMove = [choreography chooseAMoveAfter: previousMove];
    //}
    
//    [self.tableView reloadData];
    
    
    //Now using database to load choreography.
//    self.choreographyItems = [Database generateRoutine];
    self.choreographyItems = [Database testingGiveRoutineArray];

}


-(void)setGenerationFieldsWithStyle:(NSString *) style andLevel:(NSString *) level andNumberOfMoves: (int) moves{
    self.danceStyle = style;
    self.difficultyLevel = level;
    self.numberOfMoves = moves;
}

//method declaration for segue
/*
- (IBAction)generateDance:(UIStoryboardSegue *)segue
{
    //gets access to view controller that triggered segue
    SelectDanceViewController *source = [segue sourceViewController];
    
    //new choreographyGenerator object
    choreographyDictionary *choreography = [[choreographyDictionary alloc] init];
    [choreography setDanceStyle: source.selectedStyle];            //sets dance style property
    [choreography setDifficultyLevel: source.selectedLevel];  //sets difficulty level property
    [choreography setMovesDictionary];                     //sets the dictionary property
    
    //Generates choreography, starting with a basic
    NSString * previousMove = @"closedBasic";
    for (int i = 0; i < source.numMoves; ++i) {
        [self.choreographyItems addObject: previousMove]; //save the sequence
        previousMove = [choreography chooseAMoveAfter: previousMove];
    }
}
*/

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
    
    // initialize table's data array
    self.choreographyItems = [[NSMutableArray alloc] init];
    
    
    [self loadChoreographyData];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    DanceMove *temp = [self.choreographyItems objectAtIndex:indexPath.row];
   
    [[cell textLabel] setText:[NSString stringWithFormat:@"%@", temp.name]];
    
    [[cell detailTextLabel] setText:[NSString stringWithFormat:@"%@", temp.description]];
    
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
