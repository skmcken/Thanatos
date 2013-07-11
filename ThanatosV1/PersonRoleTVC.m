//
//  PersonRoleTVC.m
//  ThanatosV1
//
//  Created by Scott McKenzie on 10/07/2013.
//  Copyright (c) 2013 AG Technical Solutions. All rights reserved.
//

#import "PersonRoleTVC.h"

@implementation PersonRoleTVC
@synthesize fetchedResultsController = __fetchedResultsController;
@synthesize delegate;
@synthesize selectedPerson;
@synthesize selectedRole;

- (void)setupFetchedResultsController
{
	// 1 - Decide what Entity you want
	NSString *entityName = @"Role"; // Put your entity name here
	NSLog(@"Setting up a Fetched Results Controller for the Entity named %@", entityName);
    
	// 2 - Request that Entity
	NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:entityName];
    
	// 3 - Filter it if you want
	//request.predicate = [NSPredicate predicateWithFormat:@"Person.name = Blah"];
    
	// 4 - Sort it if you want
	request.sortDescriptors = [NSArray arrayWithObject:[NSSortDescriptor sortDescriptorWithKey:@"name"
																					 ascending:YES
																					  selector:@selector(localizedCaseInsensitiveCompare:)]];
    // 5 - Fetch it
    self.fetchedResultsController = [[NSFetchedResultsController alloc] initWithFetchRequest:request
                                                                        managedObjectContext:self.selectedPerson.managedObjectContext sectionNameKeyPath:nil
                                                                                   cacheName:nil];
    
	[self performFetch];
}

- (void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
	[self setupFetchedResultsController];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
	self.selectedRole = [self.fetchedResultsController objectAtIndexPath:indexPath];
	NSLog(@"The PersonRoleTVC reports that the %@ role was selected", self.selectedRole.name);
	[self.delegate roleWasSelectedOnPersonRoleTVC:self];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *CellIdentifier = @"Person Role Cell";
    
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	if (cell == nil) {
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
	}
    
	// Configure the cell...
	Role *role = [self.fetchedResultsController objectAtIndexPath:indexPath];
	cell.textLabel.text = role.name;
    
	return cell;
}

@end
