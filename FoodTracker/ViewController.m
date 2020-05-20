//
//  ViewController.m
//  FoodTracker
//
//  Created by iDarkDuck on 2020-05-19.
//  Copyright © 2020 iDarkDuck. All rights reserved.
//

#import "ViewController.h"

@interface ViewController()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UILabel *mealNameLabel;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.nameTextField.delegate = self;
}

- (IBAction)setDefaultLabelText:(id)sender {
    self.mealNameLabel.text = @"Default Text";
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    // Hide the keyboard.
    NSLog(@"String: %@",textField.text);
    [textField resignFirstResponder];
    return true;
}

- (void)textFieldDidEndEditing:(UITextField *)_textField{
    _mealNameLabel.text = _textField.text;
}


@end
