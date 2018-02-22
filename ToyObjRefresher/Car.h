//
//  Car.h
//  ToyObjRefresher
//
//  Created by Faiz Mokhtar on 21/02/2018.
//  Copyright © 2018 Faiz Mokhtar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

// Define a new type for the block
typedef double (^SpeedFunction)(double);

@interface Car : NSObject

@property (copy) NSString *model;
@property (readonly) double odometer;

- (void)startEngine;
- (void)drive;
- (void)turnLeft;
- (void)turnRight;

- (void)driveForDuration:(double)duration
       withVariableSpeed:(SpeedFunction)speedFunction
                   steps:(int)numSteps;

@end
