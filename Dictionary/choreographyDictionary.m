//
//  choreographyDictionary.m
//  Dictionary v1
//
//  Created by Noelle Fa-Kaji on 2/13/14.
//  Copyright (c) 2014 Noelle Fa-Kaji. All rights reserved.
//

#import "choreographyDictionary.h"

@implementation choreographyDictionary


//Shows the user what styles are available
+ (void) danceStyleMenu {
    NSLog(@"Dance styles: ChaCha");
}

//Shows the user what difficulty levels are available
+ (void) difficultyLevelMenu {
    NSLog(@"Difficulty Level: Bronze");
}

//Instance method to define the dictionaries of moves
- (void) defineDictionary
{
    //Need more work actually implementing the dictionary
    //idea: categorize as open/closed endings?
//    NSArray *valuesForBasic = @[@"basic", @"newYork", @"spotTurn", @"progressiveBasics", @"timeSteps", @"fan", @"naturalTop"];
//    
//    NSArray *valuesForNewYork = @[@"basic"];
//    
//    NSArray *valuesForSpotTurn = @[@"basic"];
//    
//    NSArray *valuesForProgressiveBasics = @[@"basic", @"progressiveBasics"];
//    
//    NSArray *valuesForTimeSteps = @[@"basic", @"spotTurn", @"newYork", @"timeSteps", @"fan"];
//    
//    NSArray *valuesForFan = @[@"alemana", @"spotTurn", @"naturalTop"];
//    
//    NSArray *valuesForAlemana = @[@"basic", @"newYork"];
//    
//    NSArray *valuesForNaturalTop = @[@"basic"];
//    
//    NSDictionary *Dictionary = @{
//                                             @"basic" : valuesForBasic,
//                                             @"newYork" : valuesForNewYork,
//                                             @"spotTurn" : valuesForSpotTurn,
//                                             @"progressiveBasics" : valuesForProgressiveBasics,
//                                             @"timeSteps" : valuesForTimeSteps,
//                                             @"fan" : valuesForFan,
//                                             @"alemana" : valuesForAlemana,
//                                             @"naturalTop" : valuesForNaturalTop
//                                             };
    

    
//    NSDictionary *ChaChaBronzeDictionary = @{
//            @"openBasic": [MovesArray getChaChaValuesArrayForMove:@"openBasic" atLevel:@"Bronze"],
//            @"closedBasic": [MovesArray getChaChaValuesArrayForMove:@"closedBasic" atLevel:@"Bronze"],
//            @"newYorkRSP": [MovesArray getChaChaValuesArrayForMove:@"newYorkRSP" atLevel:@"Bronze"],
//            @"newYorkLSP": [MovesArray getChaChaValuesArrayForMove:@"newYorkLSP" atLevel:@"Bronze"],
//            @"spotTurn": [MovesArray getChaChaValuesArrayForMove:@"spotTurn" atLevel:@"Bronze"],
//            @"switchTurn": [MovesArray getChaChaValuesArrayForMove:@"switchTurn" atLevel:@"Bronze"],
//            @"shoulderToShoulder": [MovesArray getChaChaValuesArrayForMove:@"shoulderToShoulder"  atLevel:@"Bronze"],
//            @"handToHand": [MovesArray getChaChaValuesArrayForMove:@"handToHand" atLevel:@"Bronze"],
//            @"threeChasBack": [MovesArray getChaChaValuesArrayForMove:@"threeChasBack" atLevel:@"Bronze"],
//            @"threeChasForward": [MovesArray getChaChaValuesArrayForMove:@"threeChasForward" atLevel:@"Bronze"],
//            @"sideStep": [MovesArray getChaChaValuesArrayForMove:@"sideStep" atLevel:@"Bronze"],
//            @"thereAndBack": [MovesArray getChaChaValuesArrayForMove:@"thereAndBack" atLevel:@"Bronze"],
//            @"thereAndBack": [MovesArray getChaChaValuesArrayForMove:@"thereAndBack" atLevel:@"Bronze"],
//            //@"timeStepLF": valuesForTimeStepLF,
//            @"fan": [MovesArray getChaChaValuesArrayForMove:@"fan" atLevel:@"Bronze"],
//            @"alemana": [MovesArray getChaChaValuesArrayForMove:@"alemana" atLevel:@"Bronze"],
//            @"hockeyStick": [MovesArray getChaChaValuesArrayForMove:@"hockeyStick" atLevel:@"Bronze"],
//            @"naturalTop": [MovesArray getChaChaValuesArrayForMove:@"naturalTop" atLevel:@"Bronze"],
//            @"naturalOpeningOut": [MovesArray getChaChaValuesArrayForMove:@"naturalOpeningOut" atLevel:@"Bronze"],
//            @"closedHipTwist": [MovesArray getChaChaValuesArrayForMove:@"closedHipTwist"  atLevel:@"Bronze"]
//    };
    
    NSDictionary *ChaChaBronzeDictionary = @{
         @"openBasic": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"openBasic"],
//         @"closedBasic": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"closedBasic"],
//         @"newYorkRSP": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"newYorkRSP"],
//         @"newYorkLSP": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"newYorkLSP"],
//         @"spotTurn": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"spotTurn"],
//         @"switchTurn": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"switchTurn"],
//         @"shoulderToShoulder": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"shoulderToShoulder"],
//         @"handToHand": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"handToHand"],
//         @"threeChasBack": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"threeChasBack"],
//         @"threeChasForward": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"threeChasForward"],
//         @"sideStep": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"sideStep"],
//         @"thereAndBack": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"thereAndBack"],
//         @"thereAndBack": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"thereAndBack"],
//         //@"timeStepLF": valuesForTimeStepLF,
//         @"fan": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"fan"],
//         @"alemana": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"alemana"],
//         @"hockeyStick": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"hockeyStick"],
//         @"naturalTop": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"naturalTop"],
//         @"naturalOpeningOut": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"naturalOpeningOut"],
//         @"closedHipTwist": [choreographyDictionary getValuesArrayForChaChaBronzeMove:@"closedHipTwist"]
         };

    
    
    if ([self.danceStyle isEqualToString: @"ChaCha"] && [self.difficultyLevel isEqualToString:@"Bronze"]) {
        self.movesDictionary = ChaChaBronzeDictionary;
    }
    
    //Add other cases for different dance styles
}


//Class method to get the correct values for the dictionary
+ (NSArray*) getValuesArrayForChaChaBronzeMove: (NSString*) move
{
    NSMutableString *arrayNameString =  [NSMutableString new];
    [arrayNameString appendString: @"valuesArrayForChaChaBronze"];
    [arrayNameString appendString:move];
    
    SEL arrayName = NSSelectorFromString(arrayNameString);
    
    return [choreographyDictionary performSelector:arrayName];
}


+ (NSArray*) valuesArrayForChaChaBronzeopenBasic
{
    NSArray *valuesForOpenBasic = @[@"openBasic", @"closedBasic", @"fan", @"threeChasBack", @"threeChasForward", @"naturalTop", @"alemana"];
    return valuesForOpenBasic;
}



//Chooses the next move
- (NSString*) chooseAMoveAfter: (NSString*) previousMove
{
    NSArray *movesArray = [ self.movesDictionary objectForKey: previousMove];
    
    NSUInteger randomIndex = arc4random() % [movesArray count];
    
    return movesArray[randomIndex];
}


@end
