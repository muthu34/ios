//
//  protocol.m
//  ios
//
//  Created by BLT0001-IMAC on 03/11/15.
//  Copyright © 2015 BLT0001-IMAC. All rights reserved.
//

#import "protocol.h"

@implementation protocol
@synthesize _delegate;

-(id)initWithDelegate:(id)delegate
{
    if (self=[super init]) {
       
        _delegate =delegate;
        
    }
    return self;
}
-(void)ddd
{
    [_delegate datamanager:@""];
    
}
-(IBAction)btnDelegate:(id)sender
{
    [_delegate datamanager:@""];
    [_delegate datamanager1];
}
@end
