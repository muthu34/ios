//
//  protocol.h
//  ios
//
//  Created by BLT0001-IMAC on 03/11/15.
//  Copyright © 2015 BLT0001-IMAC. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol protocolDelegate<NSObject>
@required
-(void)datamanager:(NSString*)str;
-(void)datamanager1;

@end

@interface protocol : NSObject

@property(nonatomic,assign)id<protocolDelegate>_delegate;

@end
