//
//  Car.m
//  ToyObjRefresher
//
//  Created by Faiz Mokhtar on 21/02/2018.
//  Copyright © 2018 Faiz Mokhtar. All rights reserved.
//

#import "Car.h"

static NSString *_defaultModel;

@implementation Car {
  // private instance variables
  double _odometer;
}

+ (void)setDefaultModel:(NSString *)aModel {
  _defaultModel = [aModel copy];
}

+ (void)initialize {
  if (self == [Car class]) {
    _defaultModel = @"Nissan Versa";
  }
}

- (id)initWithModel:(NSString *)aModel {
  self = [super init];
  if (self) {
    _model = [aModel copy];
    _odometer = 0;
  }

  return self;
}

- (id)init {
  return [self initWithModel:_defaultModel];
}

- (void)drive {
  NSLog(@"Driving a %@. Vrooooom!", self.model);
}

- (void)startEngine {
  _running = YES;
}

- (void)stopEngine {
  _running = NO;
}

- (void)driveForDistance:(double)theDistance {
  NSLog(@"The %@ just drove %0.1f miles",
        _model, theDistance);
}

- (void)turnByAngle:(NSNumber *)theAngle
            quickly:(NSNumber *)useParkingBrake {
  if ([useParkingBrake boolValue]) {
    NSLog(@"The %@ is drifting around the corner!", _model);
  } else {
    NSLog(@"The %@ is making a gentle %0.1f degree turn",
          _model, [theAngle doubleValue]);
  }
}

@end
