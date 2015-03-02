//
//  NSString+NSStringDrawUppercaseAtPoint.m
//  ProgrammingWithObjcC
//
//  Created by Tim Schmelmer on 3/1/15.
//  Copyright (c) 2015 Tim Schmelmer. All rights reserved.
//

#import "NSString+NSStringDrawUppercaseAtPoint.h"

@implementation NSString (NSStringDrawUppercaseAtPoint)

- (void)drawUppercaseAtPoint:(CGPoint)point withAttributes:(NSDictionary *)attrs {
    [[self uppercaseString] drawAtPoint:point withAttributes:attrs];
}

@end
