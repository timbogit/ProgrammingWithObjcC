//
//  NSString+NSStringDrawUppercaseAtPoint.h
//  ProgrammingWithObjcC
//
//  Created by Tim Schmelmer on 3/1/15.
//  Copyright (c) 2015 Tim Schmelmer. All rights reserved.
//

#ifndef ProgrammingWithObjcC_NSString_NSStringDrawUppercaseAtPoint_h
#define ProgrammingWithObjcC_NSString_NSStringDrawUppercaseAtPoint_h

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface NSString (NSStringDrawUppercaseAtPoint)
- (void)drawUppercaseAtPoint:(CGPoint)point withAttributes:(NSDictionary *)attrs;
@end

#endif
