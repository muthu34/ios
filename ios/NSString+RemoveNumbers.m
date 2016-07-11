//
//  NSString+RemoveNumbers.m
//  ios
//
//  Created by BLT0001-IMAC on 30/10/15.
//  Copyright © 2015 BLT0001-IMAC. All rights reserved.
//

#import "NSString+RemoveNumbers.h"

@implementation NSString (RemoveNumbers)
-(NSString*)removingNumbersFromString:(NSString *)str
{
    NSString *trimmedString = nil;
    NSCharacterSet *numbersSet = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
    trimmedString = [str stringByTrimmingCharactersInSet:numbersSet];
    return trimmedString;

}
@end
