//
//  Car+Maintenance.m
//  ToyObjRefresher
//
//  Created by Faiz Mokhtar on 21/02/2018.
//  Copyright © 2018 Faiz Mokhtar. All rights reserved.
//

#import "Car+Maintenance.h"

@implementation Car (Maintenance)

- (BOOL)needsOilChange {
  return YES;
}

- (void)changeOil {
  NSLog(@"Changing oil for the %@", [self model]);
}

- (void)rotateTires {
  NSLog(@"Rotating tires for the %@", [self model]);
}

- (void)jumpBatteryUsingCar:(Car *)anotherCar {
  NSLog(@"Jumped the %@ with a %@", [self model], [anotherCar model]);
}

@end
