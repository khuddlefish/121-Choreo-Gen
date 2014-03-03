//
//  SelectDanceViewController.m
//  ChoreographyGenerator
//
//  Created by Karen Huddleston on 2/24/14.
//  Copyright (c) 2014 Noelle Fa-Kaji. All rights reserved.
//

#import "SelectDanceViewController.h"

@interface SelectDanceViewController ()


@end

@implementation SelectDanceViewController

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
    
}

- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.hidden = YES;
}

@end
