//
//  MainViewController.m
//  SimpleStyles
//
//  Created by Raven on 4/1/18.
//  Copyright © 2018 RDevelopment. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()
    @property(nonatomic, strong) UITextField *textField;
    @property(nonatomic, strong) UILabel *label;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textField = [[UITextField alloc]
                      initWithFrame:
                      CGRectMake(
                                 10.0f, 30.0f, 300.0f, 30.0f)];
    self.textField.delegate = self;
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:self.textField];
    
    // button
    
    // init
    [self.view addSubview:self.textField];
    UIButton *button =
    [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    // buttons frame
    button.frame = CGRectMake(110.0f, 200.0f, 100.0f, 30.0f);
    
    // Set button title
    [button setTitle:@"Press Me!" forState:UIControlStateNormal];
    
    // set target, action controll event.
    [button addTarget:self
               action:@selector(buttonPressed)
     forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    // Label
    
    self.label = [[UILabel alloc]
                  initWithFrame:CGRectMake(115.0f, 150.0f, 200.0f, 30.0f)];
    self.label.text = @"Hello World!!";
    [self.view addSubview:self.label];
    
}

- (void)buttonPressed {

    self.label.text = self.textField.text;
    if (self.label.text == @"blue") {
        self.backgroundColor = [UIColor blueColor]
    }
}

- (bool)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    
    return NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
