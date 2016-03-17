//
//  ViewController.m
//  Calculatron
//
//  Created by Dylan Bruschi on 3/17/16.
//  Copyright © 2016 Dylan Bruschi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *endOneTextField;
@property (weak, nonatomic) IBOutlet UILabel *topLabel;
@property (weak, nonatomic) IBOutlet UITextField *endTwoTextField;
@property (weak, nonatomic) IBOutlet UILabel *bottomLabel;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)onButtonTapped:(UIButton *)sender {
    double endOne = self.endOneTextField.text.doubleValue;
    double endtwo = self.endTwoTextField.text.doubleValue;

    self.topLabel.text = sender.currentTitle;
    if ([self.topLabel.text isEqualToString:@"+"]){
        self.bottomLabel.text = [NSString stringWithFormat:@"%f", endOne + endtwo];
    } else if ([self.topLabel.text isEqualToString:@"-"]){
        self.bottomLabel.text = [NSString stringWithFormat:@"%f", endOne - endtwo];
    } else if ([self.topLabel.text isEqualToString:@"/"]){
        self.bottomLabel.text = [NSString stringWithFormat:@"%f", endOne * endtwo];
    } else {
        self.bottomLabel.text = [NSString stringWithFormat:@"%f", endOne / endtwo];
    }
}


@end
