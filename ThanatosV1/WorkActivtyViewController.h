//
//  WorkActivtyViewController.h
//  ThanatosV1
//
//  Created by Scott McKenzie on 09/07/2013.
//  Copyright (c) 2013 AG Technical Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface WorkActivtyViewController : UIViewController
<UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet UIPickerView *energyCategory;
@property (strong, nonatomic) IBOutlet UITextField *displayEnergyCategory;
@property (strong, nonatomic) IBOutlet UIImageView *displayEnergyCategoryIcon;

//property array for one column UIPickerView Example
@property (strong, nonatomic) NSArray *energyCategoryList;


@end
