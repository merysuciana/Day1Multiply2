//
//  ViewController.m
//  Multiply2
//
//  Created by Mery Suciana on 6/12/14.
//  Copyright (c) 2014 MyCompany. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *numberTextField;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (weak, nonatomic) IBOutlet UILabel *multiplierLabel;
@property (weak, nonatomic) IBOutlet UISlider *multiplierSlider;
@property (weak, nonatomic) IBOutlet UISegmentedControl *operatorSegmentControl;
@property (weak, nonatomic) IBOutlet UITextField *resultReferenceTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onCalculateButtonPressed:(UIButton *)sender {
    
    int numberText = self.numberTextField.text.intValue;
    int multiplierLab = self.multiplierLabel.text.intValue;
    
    int finalResult = 0;
    
    if (self.operatorSegmentControl.selectedSegmentIndex == 0) {
        finalResult = numberText * multiplierLab;
    } else {
        finalResult = numberText / multiplierLab;
    }
    
    self.resultReferenceTextField.text = [NSString stringWithFormat:@"%d", finalResult ];
    
    if (finalResult >= 20) {
        self.view.backgroundColor = [UIColor greenColor];
    } else {
        self.view.backgroundColor = [UIColor whiteColor];
    }
    
    if ((finalResult % 3 == 0) && (finalResult % 5 ==0)) {
        self.answerLabel.text = [NSString stringWithFormat:@"fizzbuzz"];
    } else if (finalResult % 3 == 0) {
        self.answerLabel.text = [NSString stringWithFormat:@"fizz"];
    } else if (finalResult % 5 == 0) {
        self.answerLabel.text = [NSString stringWithFormat:@"buzz"];
    }
    
    [self.view endEditing:YES];
}

- (IBAction)onMultiplierSliderValueChanged:(UISlider *)sender {
    self.multiplierLabel.text = [NSString stringWithFormat:@"%d", (int) self.multiplierSlider.value];
}
@end
