//
//  Role.h
//  ThanatosV1
//
//  Created by Scott McKenzie on 11/07/2013.
//  Copyright (c) 2013 AG Technical Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Person;

@interface Role : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * rdescription;
@property (nonatomic, retain) NSSet *heldBy;
@end

@interface Role (CoreDataGeneratedAccessors)

- (void)addHeldByObject:(Person *)value;
- (void)removeHeldByObject:(Person *)value;
- (void)addHeldBy:(NSSet *)values;
- (void)removeHeldBy:(NSSet *)values;

@end
