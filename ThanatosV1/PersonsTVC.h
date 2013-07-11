//
//  PersonsTVC.h
//  ThanatosV1
//
//  Created by Scott McKenzie on 10/07/2013.
//  Copyright (c) 2013 AG Technical Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PersonDetailTVC.h" // so this class can be an PersonDetailTVCDelegate
#import "CoreDataTableViewController.h" // so we can fetch
#import "Person.h"
@interface PersonsTVC : CoreDataTableViewController <PersonDetailTVCDelegate>
@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (strong, nonatomic) Person *selectedPerson;

@end
