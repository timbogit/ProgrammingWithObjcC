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

+ (id)person {
    return [[XYZPerson alloc] init];
}

- (void)sayHello {
    NSLog(@"Hello, world!");
}


@end