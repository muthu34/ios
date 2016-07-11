//
//  Adder.h
//  ios
//
//  Created by BLT0001-IMAC on 23/10/15.
//  Copyright © 2015 BLT0001-IMAC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Adder : NSObject
{
    NSInteger total;
}

- (id)initWithInitialNumber:(NSInteger)initialNumber;

- (void)addNumber:(NSInteger)newNumber;

- (NSInteger)getTotal;


@end
