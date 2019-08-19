//
//  EntryController.m
//  JournalObjC
//
//  Created by Blake kvarfordt on 8/19/19.
//  Copyright © 2019 Blake kvarfordt. All rights reserved.
//

#import "EntryController.h"

@implementation EntryController

+ (EntryController *) shared {
    static EntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [EntryController new];
    });
    return shared;
}


// init
- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _entries = [self entries];
    }
    
    return self;
}


// methods
- (void)addEntryWithTitle:(NSString *)title body:(NSString *)body
{
    Entry *newEntry = [[Entry alloc] initWith:title body:body];
    
    [self.entries addObject:newEntry];
}

- (void)removeEntry:(Entry *)entry
{
    
    [EntryController.shared.entries removeObject:entry];
}



@end
