//
//  Die.m
//  DieHard
//
//  Created by Adam Cooper on 10/8/14.
//  Copyright (c) 2014 Adam Cooper. All rights reserved.
//

#import "Die.h"

@implementation Die


- (void)roll{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSLog(@"This happens second.");
        int randomNumber = arc4random_uniform(6)+1;
        NSLog(@"The random load is: %D.", randomNumber);
        [self.delegate dieRolledWithValue:randomNumber];
    });
    NSLog(@"This happens first.");
    
}

@end
