//
//  ViewController.m
//  DieHard
//
//  Created by Adam Cooper on 10/8/14.
//  Copyright (c) 2014 Adam Cooper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () < DieDelegate, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *dieLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.die = [[Die alloc] init];
    self.die.delegate = self;
}

- (IBAction)onRollButtonPressed:(id)sender {
    [self.die roll];
}

-(void)dieRolledWithValue:(int)value{
    self.dieLabel.text = @(value).description;
    NSLog(@"I'm the viewController");
}

-(void)dieFellOffTheTable{
    self.dieLabel.text = @"😱";
}

@end
