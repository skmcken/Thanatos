//
//  RolesTVC.h
//  ThanatosV1
//
//  Created by Scott McKenzie on 10/07/2013.
//  Copyright (c) 2013 AG Technical Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RoleDetailTVC.h" // so this class can be an RoleDetailTVCDelegate
#import "CoreDataTableViewController.h" // so we can fetch
#import "Role.h"
@interface RolesTVC : CoreDataTableViewController <RoleDetailTVCDelegate, UISearchDisplayDelegate, UISearchBarDelegate>
@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (strong, nonatomic) Role *selectedRole;
@property (nonatomic, retain) NSMutableArray *searchResults;
@end