//
//  GreetingController.m
//  Button In Cell
//
//  Created by Dante on 15/10/16.
//  Copyright © 2015年 Futurelab. All rights reserved.
//

#import "GreetingController.h"

@interface GreetingController()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation GreetingController

- (void)viewDidLoad {
    self.label.text = [NSString stringWithFormat:@"Greetings, %@!", self.visitorName];
}

- (IBAction)greet:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

@end
