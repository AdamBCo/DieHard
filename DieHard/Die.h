//
//  Die.h
//  DieHard
//
//  Created by Adam Cooper on 10/8/14.
//  Copyright (c) 2014 Adam Cooper. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol DieDelegate

-(void)dieRolledWithValue:(int)value;

@end

@interface Die : NSObject

-(void) roll;

@property id<DieDelegate> delegate;

@end
