//
//  MoveDetailsViewController.m
//  ChoreographyGenerator
//
//  Created by Latina Vidolova on 4/7/14.
//  Copyright (c) 2014 Noelle Fa-Kaji. All rights reserved.
//

#import "MoveDetailsViewController.h"

@interface MoveDetailsViewController ()

@end

@implementation MoveDetailsViewController

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
    
    [self.moveName setText:self.moveNameString];
    [self.moveName sizeToFit];
    
    [self.moveDescription setText:self.moveDescString];
    [self.moveDescription sizeToFit];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Align label text to top of frame instead of center
-(void) viewDidLayoutSubviews{
    [self.moveDescription sizeToFit];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
