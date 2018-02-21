//
//  main.m
//  ToyObjRefresher
//
//  Created by Faiz Mokhtar on 21/02/2018.
//  Copyright © 2018 Faiz Mokhtar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarUtilities.h"
#import "Car.h"
#import "Bicycle.h"

#define PI 3.14159 // Object like macros
#define RAD_TO_DEG(radians) (radians * (180.0 / PI)) // Function like macros

typedef unsigned char ColorComponent;

typedef struct {
  unsigned char red;
  unsigned char green;
  unsigned char blue;
} Color;

typedef enum {
  FORD,
  HONDA,
  NISSAN,
  PORSCHE
} CarModel;

int getRandomInteger(int minimum, int maximum) {
  return arc4random_uniform((maximum - minimum) + 1) + minimum;
}

int countByTwo() {
  static int currentCount = 0;
  currentCount += 2;
  return currentCount;
}

// Declaration
NSString *getRandomMake(NSArray *);

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    double odometer = 9200.8;
    int odometerAsInteger = (int)odometer;

    NSLog(@"You've driven %.1f miles", odometer);
    NSLog(@"You've driven %d miles", odometerAsInteger);

    NSLog(@"6 + 2 = %d",  6 + 2);    // 8
    NSLog(@"6 - 2 = %d",  6 - 2);    // 4
    NSLog(@"6 * 2 = %d",  6 * 2);    // 12
    NSLog(@"6 / 2 = %d",  6 / 2);    // 3
    NSLog(@"6 %% 2 = %d", 6 % 2);    // 0

    int i = 0;
    NSLog(@"%d", i);    // 0
    i++;
    NSLog(@"%d", i);    // 1
    i++;
    NSLog(@"%d", i);    // 2

    int modelYear = 1990;
    if (modelYear < 1967) {
      NSLog(@"That car is an antique!!!");
    } else if (modelYear <= 1991) {
      NSLog(@"That car is a classic!");
    } else if (modelYear == 2013) {
      NSLog(@"That's a brand new car!");
    } else {
      NSLog(@"There's nothing special about that car.");
    }

    switch (modelYear) {
      case 1987:
        NSLog(@"Your car is from 1987.");
        break;
      case 1988:
        NSLog(@"Your car is from 1988.");
        break;
      case 1989:
      case 1990:
        NSLog(@"Your car is from 1989 or 1990.");
        break;
      default:
        NSLog(@"I have no idea when your car was made.");
        break;
    }

    i = 0;
    while (i<5) {
      if (i == 3) {
        NSLog(@"Aborting the while-loop");
        break;
      }
      NSLog(@"Current year: %d", modelYear + i);
      i++;
    }
    // For loops
    for (int i=0; i<5; i++) {
      if (i == 3) {
        NSLog(@"Skipping a for-loop iteration");
        continue;
      }
      NSLog(@"Current year: %d", modelYear + i);
    }

    NSArray *models = @[@"Ford", @"Honda", @"Nissan", @"Porsche"];
    for (id model in models) {
      NSLog(@"%@", model);
    }

    double angle = PI / 2;              // 1.570795
    NSLog(@"%f", RAD_TO_DEG(angle));    // 90.0

    ColorComponent red = 255;
    ColorComponent green = 160;
    ColorComponent blue = 0;
    NSLog(@"Your paint job is (R: %hhu, G: %hhu, B: %hhu)",
          red, green, blue);

    Color carColor = {255, 160, 0};
    NSLog(@"Your paint job is (R: %hhu, G: %hhu, B: %hhu)",
          carColor.red, carColor.green, carColor.blue);

    CarModel myCar = NISSAN;
    switch (myCar) {
      case FORD:
      case PORSCHE:
        NSLog(@"You like Western cars?");
        break;
      case HONDA:
      case NISSAN:
        NSLog(@"You like Japanese cars?");
        break;
      default:
        break;
    }

    int years[4] = {1968, 1970, 1989, 1999};
    years[0] = 1967;
    for (int i=0; i<4; i++) {
      NSLog(@"The year at index %d is: %d", i, years[i]);
    }

    int year = 1967;          // Define a normal variable
    int *pointer;             // Declare a pointer that points to an int
    pointer = &year;          // Find the memory address of the variable
    NSLog(@"%d", *pointer);   // Dereference the address to get its value
    *pointer = 1990;          // Assign a new value to the memory address
    NSLog(@"%d", year);       // Access the value via the variable

    char model[5] = {'H', 'o', 'n', 'd', 'a'};
    char *modelPointer = &model[0];
    for (int i=0; i<5; i++) {
      NSLog(@"Value at memory address %p is %c",
            modelPointer, *modelPointer);
      modelPointer++;
    }
    NSLog(@"The first letter is %c", *(modelPointer - 5));

    NSLog(@"%d", *pointer);     // Do something with the value
    pointer = NULL;             // Then invalidate it

    void *genericPointer = &year;
    int *intPointer = (int *)genericPointer;
    NSLog(@"%d", *intPointer);

    int randomNumber = getRandomInteger(-10, 10);
    NSLog(@"Selected a random number between -10 and 10: %d",
          randomNumber);

    NSArray *makes = @[@"Honda", @"Ford", @"Nissan", @"Porsche"];
    NSLog(@"Selected a %@", getRandomMake(makes));

    NSLog(@"%d", countByTwo());    // 2
    NSLog(@"%d", countByTwo());    // 4
    NSLog(@"%d", countByTwo());    // 6

    NSDictionary *makesAndModels = @{
                                     @"Ford": @[@"Explorer", @"F-150"],
                                     @"Honda": @[@"Accord", @"Civic", @"Pilot"],
                                     @"Nissan": @[@"370Z", @"Altima", @"Versa"],
                                     @"Porsche": @[@"911 Turbo", @"Boxster", @"Cayman S"]
                                     };

    NSString *randomCar = CUGetRandomMakeAndModel(makesAndModels);
    NSLog(@"Selected a %@", randomCar);

    Car *toyota = [[Car alloc] init];

    [toyota setModel:@"Toyota Corolla"];
    NSLog(@"Created a %@", [toyota model]);

    toyota.model = @"Toyota Camry";
    NSLog(@"Changed the car to a %@", toyota.model);

    [toyota drive];

    [Car setDefaultModel:@"Nissan Versa"];

    Car *nissan = [[Car alloc] init];
    NSLog(@"Created a %@", [nissan model]);

    Car *chevy = [[Car alloc] initWithModel:@"Chevy Corvette"];
    NSLog(@"Created a %@, too.", chevy.model);

    Car *delorean = [[Car alloc] initWithModel:@"Delorean"];
    NSLog(@"%@ is an instance of the %@ class",
          [delorean model], [delorean class]);

    // Check an object against a class and all subclasses
    if ([delorean isKindOfClass:[NSObject class]]) {
      NSLog(@"%@ is an instance of NSObject or one "
            "of its subclasses",
            [delorean model]);
    } else {
      NSLog(@"%@ is not an instance of NSObject or "
            "one of its subclasses",
            [delorean model]);
    }

    // Check an object against a class, but not its subclasses
    if ([delorean isMemberOfClass:[NSObject class]]) {
      NSLog(@"%@ is a instance of NSObject",
            [delorean model]);
    } else {
      NSLog(@"%@ is not an instance of NSObject",
            [delorean model]);
    }

    // Convert between strings and classes
    if (NSClassFromString(@"Car") == [Car class]) {
      NSLog(@"I can convert between strings and classes!");
    }

    Car *honda = [[Car alloc] init];
    [honda startEngine];
    NSLog(@"Car is running: %d", honda.isRunning);
    [honda stopEngine];
    NSLog(@"Car is running: %d", honda.isRunning);

    Person *john = [[Person alloc] init];
    john.name = @"John";

    Car *wira = [[Car alloc] init];
    wira.model = @"Proton Wira";
    wira.driver = john;
    john.car = wira;

    NSLog(@"%@ is driving the %@", wira.driver, wira.model);

    Car *myvi = [[Car alloc] init];
    NSString *myviBrand = [NSMutableString stringWithString:@"Myvi 1.6"];
    myvi.model = myviBrand;

    NSLog(@"%@", myvi.model);
    NSLog(@"%@", honda.model);

    Bicycle *bike = [[Bicycle alloc] init];
    [bike startPedaling];
    [bike signalLeftTurn];
    [bike signalStop];
    [bike lockToStructure:nil];
  }
  return 0;
}

NSString *getRandomMake(NSArray *makes) {
  int maximum = (int)[makes count];
  int randomIndex = arc4random_uniform(maximum);
  return makes[randomIndex];
}
