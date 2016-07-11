//
//  CategoryViewController.m
//  ios
//
//  Created by BLT0001-IMAC on 30/10/15.
//  Copyright © 2015 BLT0001-IMAC. All rights reserved.
//

#import "CategoryViewController.h"
#import "NSString+RemoveNumbers.h"
@implementation CategoryViewController

-(void)viewWillAppear:(BOOL)animated
{
    NSString *stringWithNums = @"ABC 123";
    NSLog(@"stringWithNums         --> %@",stringWithNums);
    stringWithNums = [stringWithNums removingNumbersFromString:stringWithNums];
    NSLog(@"trimmed stringWithNums --> %@",stringWithNums);
}
-(NSString*)strWithFormat:(NSArray*)arr{
    return nil;
}
@end
