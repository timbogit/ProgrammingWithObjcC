//
//  #import "XYZPerson+XYZPersonNameDisplayAdditions.h" XYZPerson+XYZPersonNameDisplayAdditions.m
//  ProgrammingWithObjcC
//
//  Created by Tim Schmelmer on 3/1/15.
//  Copyright (c) 2015 Tim Schmelmer. All rights reserved.
//

#import "XYZPerson+XYZPersonNameDisplayAdditions.h"

@implementation XYZPerson (XYZPersonNameDisplayAdditions)
- (NSString *)lastNameFirstNameString {
    return [NSString stringWithFormat:@"%@, %@", self.lastName, self.firstName];
}
@end