//
//  Person.h
//  ThanatosV1
//
//  Created by Scott McKenzie on 11/07/2013.
//  Copyright (c) 2013 AG Technical Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Role;

@interface Person : NSManagedObject

@property (nonatomic, retain) NSString * firstname;
@property (nonatomic, retain) NSString * surname;
@property (nonatomic, retain) Role *inRole;

@end
