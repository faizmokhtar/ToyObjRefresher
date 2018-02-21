//
//  Car.h
//  ToyObjRefresher
//
//  Created by Faiz Mokhtar on 21/02/2018.
//  Copyright © 2018 Faiz Mokhtar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Car : NSObject {
  // protected instance variable (not recommended)
}

// Accessors
- (BOOL)isRunning;
- (void)setRunning:(BOOL)running;
- (NSString *)model;
- (void)setModel:(NSString *) model;

// Calculated values
- (double)maximumSpeed;
- (double)maximumSpeedUsingLocale:(NSLocale *)locale;

// Action methods
- (void)startEngine;
- (void)stopEngine;
- (void)driveForDistance:(double)theDistance;
- (void)driveFromOrigin:(id)theOrigin toDestination:(id)theDestination;
- (void)turnByAngle:(double)theAngle;
- (void)turnToAngle:(double)theAngle;

// Error handling methods
- (BOOL)loadPassenger:(id)aPassenger error:(NSError **)error;

// Constructor methods
- (id)initWithModel:(NSString *)aModel;
- (id)initWithModel:(NSString *)aModel mileage:(double)theMileage;

// Comparison methods
- (BOOL)isEqualToCar:(Car *)anotherCar;
- (Car *)fasterCar:(Car *)anotherCar;
- (Car *)slowerCar:(Car *)anotherCar;

// Factory methods
+ (Car *)car;
+ (Car *)carWithModel:(NSString *)aModel;
+ (Car *)carWithModel:(NSString *)aModel mileage:(double)theMileage;

// Singleton methods
+ (Car *)sharedCar;

@property (nonatomic, copy) NSString *model;
@property (nonatomic, strong) Person *driver;
@property (getter=isRunning, readonly) BOOL running;

+ (void)setDefaultModel:(NSString *)aModel;


- (void)drive;


@end
