//
//  XYZShoutingPerson.m
//  ProgrammingWithObjcC
//
//  Created by Tim Schmelmer on 2/27/15.
//  Copyright (c) 2015 Tim Schmelmer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYZShoutingPerson.h"

@implementation XYZShoutingPerson

+ (XYZShoutingPerson *)person {
    return [self new];
}

- (id)init {
    return [self initWithFirstName: @"LOUD" lastName:  @"MOUTH"];
}

- (void)saySomething:(NSString *)greeting {
    [super saySomething:[greeting uppercaseString]];
}

@end