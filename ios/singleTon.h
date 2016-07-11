//
//  singleTon.h
//  ios
//
//  Created by BLT0001-IMAC on 30/10/15.
//  Copyright © 2015 BLT0001-IMAC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface singleTon : NSObject{
   
    NSString *someProperty;
}

@property(nonatomic,retain)NSString *someProperty;

+(id)sharedManager;

@end
