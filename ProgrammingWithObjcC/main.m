//
//  main.m
//  ProgrammingWithObjcC
//
//  Created by Tim Schmelmer on 26.02.15.
//  Copyright (c) 2015 Tim Schmelmer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYZPerson.h"
#import "XYZShoutingPerson.h"
#import "XYZPerson+XYZPersonNameDisplayAdditions.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *revisedString = [@"About to let a person say Hello!" uppercaseString];
        NSLog(@"%@", revisedString);
        XYZPerson *person = [XYZPerson person];
        XYZShoutingPerson *loudPerson = [XYZShoutingPerson person];
        XYZShoutingPerson __weak *weakShouter = [XYZShoutingPerson personWithFirstName:@"Weak" lastName:@"Shouter"];
        
        [person sayHello];
        [person sayGoodnight];
        [person sayGoodbye];
        
        [loudPerson sayHello];
        [loudPerson sayGoodnight];
        [loudPerson sayGoodbye];
        
        loudPerson = nil;
        
        XYZPerson *secondPerson;
        
        if (!secondPerson) {
            NSLog(@"The second person is not alloc'ed.");
        }
        
        NSMutableString *holli = [NSMutableString stringWithString:@"Safora"];
        
        secondPerson = [[XYZPerson alloc] initWithFirstName:holli lastName:@"Zitouni" dateOfBirth:[NSDate distantPast]];
        [person setPartner:secondPerson];
        [secondPerson setPartner:person];
        NSLog(@"The second person's full is %@", [secondPerson lastNameFirstNameString]);
        
        [holli appendString:@"ny"];

        NSLog(@"The second person's full name after the appending is %@", [secondPerson lastNameFirstNameString]);
        
        NSString *number = @"Hello";
        NSMutableString *fortyTwo = [NSMutableString stringWithString: @"Hello"];
        NSSet *numberSet =
        [NSSet setWithObjects:number, fortyTwo, nil];
        NSLog(@"The count is %lu", (unsigned long)[numberSet count]);
        NSLog(@"Tim's height is %f, and his weight is %f", [person measureHeight], [person measureWeight]);
        
    }
    return 0;
}
