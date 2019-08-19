//
//  Entry.m
//  JournalObjC
//
//  Created by Blake kvarfordt on 8/19/19.
//  Copyright © 2019 Blake kvarfordt. All rights reserved.
//

#import "Entry.h"

@implementation Entry

- (instancetype)initWith:(NSString *)name body:(NSString *)body
{
    self = [super init];
    
    if (self)
    {
        _name = [name copy];
        _body = [body copy];
        _timestamp = [NSDate date];
    }
    
    return self;
}

@end
