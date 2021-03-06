//
//  CarUtilities.m
//  ToyObjRefresher
//
//  Created by Faiz Mokhtar on 21/02/2018.
//  Copyright © 2018 Faiz Mokhtar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarUtilities.h"

// Private function declaration
static id getRandomItemFromArray(NSArray *anArray);

// Public function implementations
NSString *CUGetRandomMake(NSArray *makes) {
  return getRandomItemFromArray(makes);
}
NSString *CUGetRandomModel(NSArray *models) {
  return getRandomItemFromArray(models);
}
NSString *CUGetRandomMakeAndModel(NSDictionary *makesAndModels) {
  NSArray *makes = [makesAndModels allKeys];
  NSString *randomMake = CUGetRandomMake(makes);
  NSArray *models = makesAndModels[randomMake];
  NSString *randomModel = CUGetRandomModel(models);
  return [randomMake stringByAppendingFormat:@" %@", randomModel];
}

// Private function implementation
static id getRandomItemFromArray(NSArray *anArray) {
  int maximum = (int)[anArray count];
  int randomIndex = arc4random_uniform(maximum);
  return anArray[randomIndex];
}

