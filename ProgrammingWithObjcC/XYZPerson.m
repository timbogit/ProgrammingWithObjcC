//
//  XYZPerson.m
//  ProgrammingWithObjcC
//
//  Created by Tim Schmelmer on 26.02.15.
//  Copyright (c) 2015 Tim Schmelmer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYZPerson.h"

@implementation XYZPerson

+ (XYZPerson *)person {
    return [self new];
}

- (id)init {
    return [self initWithFirstName: @"Tim" lastName:  @"Schmelmer"];
}

- (id)initWithFirstName:(NSString *)aFirstName lastName:(NSString *)aLastName {
    return [self initWithFirstName: aFirstName lastName: aLastName dateOfBirth:[NSDate date]];
}

- (id)initWithFirstName:(NSString *)aFirstName lastName:(NSString *)aLastName
            dateOfBirth:(NSDate *)aDOB {
    self = [super init];
    if (self) {
        _firstName = aFirstName;
        _lastName = aLastName;
        _dateOfBirth = aDOB;
    }
    return self;
}

- (NSString *)fullName {
    return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
}

- (void)sayHello {
    [self saySomething:@"Hello, world!"];
}

-(void)sayGoodbye {
    [self saySomething:@"Goodbye, y'all!"];
}

-(void)sayGoodnight {
    [self saySomething:@"Gute Nacht zusammen!"];
}

- (void)saySomething:(NSString *)greeting {
    NSLog(@"%@", greeting);
}


@end