//
//  Coupe.m
//  ToyObjRefresher
//
//  Created by Faiz Mokhtar on 21/02/2018.
//  Copyright © 2018 Faiz Mokhtar. All rights reserved.
//

#import "Coupe.h"
#import "Car+Protected.h"

@implementation Coupe

- (void)startEngine {
  [super startEngine];
  // Call the protected method here instead of in `drive`
  [self prepareToDrive];
}

- (void)drive {
  NSLog(@"VROOOOOOM!");
}

@end
