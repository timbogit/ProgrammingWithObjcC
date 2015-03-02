//
//  XYZPerson.h
//  ProgrammingWithObjcC
//
//  Created by Tim Schmelmer on 26.02.15.
//  Copyright (c) 2015 Tim Schmelmer. All rights reserved.
//

#ifndef ProgrammingWithObjcC_XYZPerson_h
#define ProgrammingWithObjcC_XYZPerson_h

#import <Foundation/Foundation.h>

@interface XYZPerson : NSObject

@property (readonly, copy)NSString             *firstName;
@property (readonly, copy)NSString             *lastName;
@property (readonly, copy)NSDate               *dateOfBirth;
@property (weak)XYZPerson                      *partner;
@property (readonly,getter=measureWeight)float weight;
@property (readonly,getter=measureHeight)float height;

@property (readonly) NSString *fullName;

+(XYZPerson *)person;
+(XYZPerson *)personWithFirstName:(NSString *)aFirstName lastName:(NSString *)aLastName;
+(XYZPerson *)personWithFirstName:(NSString *)aFirstName lastName:(NSString *)aLastName dateOfBirth:(NSDate *)aDOB;


- (id)initWithFirstName:(NSString *)aFirstName lastName:(NSString *)aLastName;
- (id)initWithFirstName:(NSString *)aFirstName lastName:(NSString *)aLastName
            dateOfBirth:(NSDate *)aDOB;

-(void)sayHello;
-(void)sayGoodbye;
-(void)sayGoodnight;
-(void)saySomething:(NSString *)greeting;


@end

#endif
