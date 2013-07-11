//
//  RolePickerTVCell.h
//  ThanatosV1
//
//  Created by Scott McKenzie on 11/07/2013.
//  Copyright (c) 2013 AG Technical Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreDataTableViewCell.h"
#import "Role.h"

@class RolePickerTVCell;

@protocol RolePickerTVCellDelegate
- (void)roleWasSelectedOnPicker:(Role*)role;
@end

@interface RolePickerTVCell : CoreDataTableViewCell

@property (nonatomic, weak) id <RolePickerTVCellDelegate> delegate;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, strong) Role *selectedRole;

@end
