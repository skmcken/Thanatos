//
//  WorkActivtyViewController.m
//  ThanatosV1
//
//  Created by Scott McKenzie on 09/07/2013.
//  Copyright (c) 2013 AG Technical Solutions. All rights reserved.
//

#import "WorkActivtyViewController.h"

@interface WorkActivtyViewController ()

@end

@implementation WorkActivtyViewController
@synthesize energyCategory;
@synthesize energyCategoryList;
@synthesize displayEnergyCategory;
@synthesize displayEnergyCategoryIcon;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    energyCategory.showsSelectionIndicator = true;
    //One column array example
    self.energyCategoryList=[[NSArray alloc] initWithObjects:@"Motion",@"Chemical",@"Radiation",@"Electrical",@"Biological",@"Pressure", nil];
    UIImage * NoCategory = [UIImage imageNamed:@"NoCategory.png"];
    displayEnergyCategoryIcon.image = NoCategory;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIPickerView

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    //One column
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    //set number of rows
    return energyCategoryList.count;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    //set item per row
    return [energyCategoryList objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    //Create our UIImage Object
    UIImage * Motion = [UIImage imageNamed:@"Motion.png"];
    UIImage * Chemical = [UIImage imageNamed:@"Chemical.png"];
    UIImage * Radiation = [UIImage imageNamed:@"Radiation.png"];
    UIImage * Electrical = [UIImage imageNamed:@"Electrical.png"];
    UIImage * Biological = [UIImage imageNamed:@"Biological.png"];
    UIImage * Pressure = [UIImage imageNamed:@"Pressure.png"];
        
    switch (row) {
        case 0:
            displayEnergyCategoryIcon.image = Motion;
            self.displayEnergyCategory.text=[energyCategoryList objectAtIndex:row];
            break;
        case 1:
            displayEnergyCategoryIcon.image = Chemical;
            self.displayEnergyCategory.text=[energyCategoryList objectAtIndex:row];
            break;
        case 2:
            displayEnergyCategoryIcon.image = Radiation;
            self.displayEnergyCategory.text=[energyCategoryList objectAtIndex:row];
            break;
        case 3:
            displayEnergyCategoryIcon.image = Electrical;
            self.displayEnergyCategory.text=[energyCategoryList objectAtIndex:row];
            break;
        case 4:
            displayEnergyCategoryIcon.image = Biological;
            self.displayEnergyCategory.text=[energyCategoryList objectAtIndex:row];
            break;
        case 5:
            displayEnergyCategoryIcon.image = Pressure;
            self.displayEnergyCategory.text=[energyCategoryList objectAtIndex:row];
            break;
        default:
            displayEnergyCategoryIcon.image = Motion;
            self.displayEnergyCategory.text=[energyCategoryList objectAtIndex:row];
            break;
    }
}
@end
