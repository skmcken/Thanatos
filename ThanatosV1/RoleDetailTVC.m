//
//  RoleDetailTVC.m
//  ThanatosV1
//
//  Created by Scott McKenzie on 10/07/2013.
//  Copyright (c) 2013 AG Technical Solutions. All rights reserved.
//

#import "RoleDetailTVC.h"

@implementation RoleDetailTVC
@synthesize delegate;
@synthesize roleNameTextField;

@synthesize role = _role;

- (void)viewDidLoad
{
    NSLog(@"Setting the value of fields in this static table to that of the passed Role");
    self.roleNameTextField.text = self.role.name;
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [self setRoleNameTextField:nil];
    [super viewDidUnload];
}

- (IBAction)save:(id)sender
{
    NSLog(@"Telling the RoleDetailTVC Delegate that Save was tapped on the RoleDetailTVC");
    [self.role setName:roleNameTextField.text];
    [self.role.managedObjectContext save:nil];  // write to database
    [self.delegate theSaveButtonOnTheRoleDetailTVCWasTapped:self];
}


@end
