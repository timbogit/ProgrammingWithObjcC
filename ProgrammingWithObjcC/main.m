//
//  main.m
//  ProgrammingWithObjcC
//
//  Created by Tim Schmelmer on 26.02.15.
//  Copyright (c) 2015 Tim Schmelmer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYZPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"About to let a  person say Hello!");
        XYZPerson *person = [XYZPerson person];
        
        [person sayHello];
    }
    return 0;
}
