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