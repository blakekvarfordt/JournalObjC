//
//  Entry.h
//  JournalObjC
//
//  Created by Blake kvarfordt on 8/19/19.
//  Copyright © 2019 Blake kvarfordt. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Entry : NSObject

@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, copy, readonly) NSString *body;
@property (nonatomic, copy, readonly) NSDate *timestamp;

- (instancetype)initWith:(NSString *)name body:(NSString *)body;

@end


