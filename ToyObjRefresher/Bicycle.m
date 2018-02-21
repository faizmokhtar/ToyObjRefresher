//
//  Bicycle.m
//  ToyObjRefresher
//
//  Created by Faiz Mokhtar on 21/02/2018.
//  Copyright © 2018 Faiz Mokhtar. All rights reserved.
//

#import "Bicycle.h"

@implementation Bicycle
- (void)signalLeftTurn {
  NSLog(@"Extending left arm outwards");
}

- (void)signalRightTurn {
  NSLog(@"Bending left arm upwards");
}

- (void)signalStop {
  NSLog(@"Bending left arm downwards");
}

- (void)startPedaling {
  NSLog(@"Here we go!");
}
- (void)removeFrontWheel {
  NSLog(@"Front wheel is off."
        "Should probably replace that before pedaling...");
}
- (void)lockToStructure:(id)theStructure {
  NSLog(@"Locked to structure. Don't forget the combination!");
}

@end
