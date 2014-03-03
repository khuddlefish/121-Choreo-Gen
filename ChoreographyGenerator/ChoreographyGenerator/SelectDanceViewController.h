//
//  SelectDanceViewController.h
//  ChoreographyGenerator
//
//  Created by Karen Huddleston on 2/24/14.
//  Copyright (c) 2014 Noelle Fa-Kaji. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelectDanceViewController : UIViewController <UIPickerViewDataSource,UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *dancePicker;
@property NSArray *danceNames;


@end
