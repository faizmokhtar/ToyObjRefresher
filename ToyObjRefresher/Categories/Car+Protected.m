//
//  Car+Protected.m
//  ToyObjRefresher
//
//  Created by Faiz Mokhtar on 21/02/2018.
//  Copyright © 2018 Faiz Mokhtar. All rights reserved.
//

#import "Car+Protected.h"

@implementation Car (Protected)

- (void)prepareToDrive {
  NSLog(@"Doing some internal work to get the %@ ready to drive",
        [self model]);
}

@end
