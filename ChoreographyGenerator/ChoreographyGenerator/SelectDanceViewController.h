//
//  SelectDanceViewController.h
//  ChoreographyGenerator
//
//  Created by Karen Huddleston on 2/24/14.
//  Copyright (c) 2014 Noelle Fa-Kaji. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelectDanceViewController : UIViewController <UIPickerViewDataSource,UIPickerViewDelegate>

//connection to picker view from storyboard
@property (weak, nonatomic) IBOutlet UIPickerView *dancePicker;

//property for array of dance styles in picker view
@property NSArray *danceNames;

//properties that will be determined by user input
@property NSString *selectedStyle;
@property NSString *selectedLevel;
@property int numMoves;

@end
