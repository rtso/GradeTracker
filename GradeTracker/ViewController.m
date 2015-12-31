//
//  ViewController.m
//  GradeTracker
//
//  Created by Renee on 12/30/15.
//  Copyright © 2015 Renee Tso. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *CoursePicker;
@property (weak, nonatomic) IBOutlet UIPickerView *GradeTypePicker;
@property (weak, nonatomic) IBOutlet UITextField *myGrade;
@property (weak, nonatomic) IBOutlet UIStackView *totalPossible;
@property (strong, nonatomic) NSArray *courses;

@end

@implementation ViewController

- (IBAction)doneEnteringGrade:(UIButton *)sender {
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if (self.courses != nil) {
        return [self.courses count];
    }
    return 0;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if (self.courses != nil) {
        return [self.courses objectAtIndex:row];
    }
    return nil;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.courses = @[@"Algorithms and Models of Computation", @"Introduction to Modern Dance", @"Systems Programming", @"The World Through Museums", @"Quantum Physics"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
