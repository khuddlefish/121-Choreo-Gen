//
//  SelectDanceViewController.m
//  ChoreographyGenerator
//
//  Created by Karen Huddleston on 2/24/14.
//  Copyright (c) 2014 Noelle Fa-Kaji. All rights reserved.
//

#import "SelectDanceViewController.h"
#import "ChoreoTableViewController.h"

@interface SelectDanceViewController ()


@end

@implementation SelectDanceViewController

/*
 Should implement using IBOutlets somehwo
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
}
*/

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //create list of dance style names for move picker
    self.danceNames = [[NSArray alloc] initWithObjects:@"ChaCha", @"Rumba", @"Samba", nil];
    [_dancePicker selectRow:1 inComponent:0 animated:NO];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    
    return 1;
}

// returns the # of rows in each component. Change if add more dances
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    return 3;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    //returns user selected dance style
    //probably want to use for generator somehow
    return [self.danceNames objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    self.selectedStyle = self.danceNames[component];
}

//sets navigation bar to be hidden
- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.hidden = YES;
}

//virtual keyboard disappears on return
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (self.numberOfMovesField.isFirstResponder) {
        [self.numberOfMovesField resignFirstResponder];
    }
    
    return YES;
}

//This seems to handle all button cases. Is this the only method we need?
-(void) didPressBronzeButton: (id) sender{
    if (sender==self.bronzeButton) {
        self.selectedLevel = @"Bronze";

    }
    
    if (sender==self.silverButton) {
        self.selectedLevel = @"Silver";
        
    }

    if (sender==self.goldButton) {
        self.selectedLevel = @"Gold";
        
    }

}

-(void) didPressSilverButton{
    self.selectedLevel = @"Silver";
}
-(void) didPressGoldButton{
    self.selectedLevel = @"Gold";
}


//ensuring number of moves is a number
- (BOOL) textField: (UITextField *)theTextField shouldChangeCharactersInRange:(NSRange)range replacementString: (NSString *)string {
    
    // allow backspace
    if (!string.length)
    {
        return YES;
    }
    
    // allow digit 0 to 9
    if ([string intValue])
    {
        return YES;
    }
    
    return NO;
}





//segue to choreo view
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"Generate"]) {
        
        self.numMoves = [self.numberOfMovesField.text intValue];
                
        //UINavigationController *navigationController = segue.destinationViewController;
        ChoreoTableViewController *choreoGenVC = segue.destinationViewController;
        [choreoGenVC setGenerationFieldsWithStyle:self.selectedStyle andLevel:self.selectedLevel andNumberOfMoves:self.numMoves];

        
    }
}

@end
