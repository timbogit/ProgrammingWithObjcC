//
//  XYZPerson.m
//  ProgrammingWithObjcC
//
//  Created by Tim Schmelmer on 26.02.15.
//  Copyright (c) 2015 Tim Schmelmer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYZPerson.h"

@interface XYZPerson ()

@property (readwrite)float weight;
@property (readwrite)float height;

@end


@implementation XYZPerson

+ (XYZPerson *)person {
    return [self new];
}

+ (XYZPerson *)personWithFirstName:(NSString *)aFirstName lastName:(NSString *)aLastName {
    return [[self alloc] initWithFirstName:aFirstName lastName:aLastName];
}

+ (XYZPerson *)personWithFirstName:(NSString *)aFirstName lastName:(NSString *)aLastName
                       dateOfBirth:(NSDate *)aDOB {
    return [[self alloc] initWithFirstName:aFirstName lastName:aLastName dateOfBirth:aDOB];
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
        _firstName = [aFirstName  copy];
        _lastName = [aLastName copy];
        _dateOfBirth = [aDOB copy];
        self.weight = 75.0;
        self.height = 183.0;
    }
    return self;
}

- (void)dealloc {
    NSLog(@"XYZPerson %@ is being deallocated", [self fullName]);
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