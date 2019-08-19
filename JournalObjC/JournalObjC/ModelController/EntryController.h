//
//  EntryController.h
//  JournalObjC
//
//  Created by Blake kvarfordt on 8/19/19.
//  Copyright © 2019 Blake kvarfordt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"


@interface EntryController : NSObject

+ (EntryController *)shared;

@property (nonatomic) NSMutableArray *entries;


- (void) addEntryWithTitle:(NSString *)title body:(NSString *)body;
- (void) removeEntry:(Entry *)entry;

@end


