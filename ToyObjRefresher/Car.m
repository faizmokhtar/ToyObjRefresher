//
//  Car.m
//  ToyObjRefresher
//
//  Created by Faiz Mokhtar on 21/02/2018.
//  Copyright © 2018 Faiz Mokhtar. All rights reserved.
//

#import "Car.h"
#import "Car+Protected.h"

static NSString *_defaultModel;

@interface Car()

- (BOOL)engineIsWorking;

@end

@implementation Car

- (void)startEngine {
  if ([self engineIsWorking]) {
    NSLog(@"Starting the %@'s engine", _model);
  }
}

- (void)drive {
  [self prepareToDrive];
  NSLog(@"The %@ is now driving", _model);
}

- (void)turnLeft {
  NSLog(@"The %@ is turning left", _model);
}

- (void)turnRight {
  NSLog(@"The %@ is turning right", _model);
}

- (BOOL)engineIsWorking {
  return YES;
}

- (void)driveForDuration:(double)duration withVariableSpeed:(double (^)(double))speedFunction steps:(int)numSteps {
  double dt = duration / numSteps;
  for (int i=1; i<=numSteps; i++) {
    _odometer += speedFunction(i*dt) * dt;
  }
}

@end
