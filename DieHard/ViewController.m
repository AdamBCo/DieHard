//
//  ViewController.m
//  DieHard
//
//  Created by Adam Cooper on 10/8/14.
//  Copyright (c) 2014 Adam Cooper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *dieLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.die = [[Die alloc] init];
}

- (IBAction)onRollButtonPressed:(id)sender {
    [self.die roll];
}

@end
