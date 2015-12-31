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
@property (strong, nonatomic) NSArray *gradeTypes;

@end

@implementation ViewController

- (IBAction)doneEnteringGrade:(UIButton *)sender {
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if (pickerView == self.CoursePicker) {
        if (self.courses != nil) {
            return [self.courses count];
        }
    }
    if (pickerView == self.GradeTypePicker) {
        if (self.gradeTypes != nil) {
            return [self.gradeTypes count];
        }
    }
    return 0;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if (pickerView == self.CoursePicker) {
        if (self.courses != nil) {
            return [self.courses objectAtIndex:row];
        }
    }
    if (pickerView == self.GradeTypePicker) {
        if (self.gradeTypes != nil) {
            return [self.gradeTypes objectAtIndex:row];
        }
    }
    return nil;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.courses = @[@"Algorithms and Models of Computation", @"Introduction to Modern Dance", @"Systems Programming", @"The World Through Museums", @"Quantum Physics"];
    self.gradeTypes = @[@"Homework", @"Quiz", @"Exam", @"Lab", @"Extra Credit"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
