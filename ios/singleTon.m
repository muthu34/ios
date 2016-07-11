//
//  singleTon.m
//  ios
//
//  Created by BLT0001-IMAC on 30/10/15.
//  Copyright © 2015 BLT0001-IMAC. All rights reserved.
//

#import "singleTon.h"

@implementation singleTon

@synthesize someProperty;
//GCD
+(id)sharedManager
{
    static singleTon *sharedMySingleTon = nil;
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        sharedMySingleTon = [[self alloc]init];
        
    });
    return sharedMySingleTon;
}
-(id)init
{
    if (self =[super init]) {
        someProperty = @"Default Property Value";
    }
    return self;
}
//NONGCD
//+(id)sharedManager
//{
//    static singleTon *sharedMySingleTon = nil;
//  
//    @synchronized(self) {
//        
//        if (sharedMySingleTon == nil) {
//            
//            sharedMySingleTon = [[self alloc]init];
//        }
//    }
//    return sharedMySingleTon;
//}
@end
