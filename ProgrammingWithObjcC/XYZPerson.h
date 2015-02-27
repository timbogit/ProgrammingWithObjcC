//
//  XYZPerson.h
//  ProgrammingWithObjcC
//
//  Created by Tim Schmelmer on 26.02.15.
//  Copyright (c) 2015 Tim Schmelmer. All rights reserved.
//

#ifndef ProgrammingWithObjcC_XYZPerson_h
#define ProgrammingWithObjcC_XYZPerson_h

@interface XYZPerson : NSObject

@property (readonly)NSString  *firstName;
@property (readonly)NSString  *lastName;
@property (readonly)NSDate    *dateOfBirth;

+(id)person;

-(void)sayHello;


@end

#endif