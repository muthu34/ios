//
//  Adder.m
//  ios
//
//  Created by BLT0001-IMAC on 23/10/15.
//  Copyright © 2015 BLT0001-IMAC. All rights reserved.
//

#import "Adder.h"

@implementation Adder

-(id)initWithInitialNumber:(NSInteger)initialNumber
{
    total = initialNumber;
    return self;
}

-(void)addNumber:(NSInteger)newNumber
{
    total = total + newNumber;
}

-(NSInteger)getTotal
{
    return total;
}

@end
