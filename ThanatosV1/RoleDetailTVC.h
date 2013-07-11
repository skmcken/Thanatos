//
//  RoleDetailTVC.h
//  ThanatosV1
//
//  Created by Scott McKenzie on 10/07/2013.
//  Copyright (c) 2013 AG Technical Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Role.h"

@class RoleDetailTVC;
@protocol RoleDetailTVCDelegate <NSObject>
- (void)theSaveButtonOnTheRoleDetailTVCWasTapped:(RoleDetailTVC *)controller;
@end

@interface RoleDetailTVC : UITableViewController

@property (nonatomic, weak) id <RoleDetailTVCDelegate> delegate;
@property (strong, nonatomic) IBOutlet UITextField *roleNameTextField;
@property (strong, nonatomic) Role *role;

- (IBAction)save:(id)sender;

@end