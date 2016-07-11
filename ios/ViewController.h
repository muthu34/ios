//
//  ViewController.h
//  ios
//pert
//  Created by BLT0001-IMAC on 22/10/15.
//  Copyright © 2015 BLT0001-IMAC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "protocol.h"

@interface ViewController : UIViewController<protocolDelegate>

typedef void (^CompletionBlock)();

- (void)performActionWithCompletion:(CompletionBlock)completionBlock;
@property(atomic,assign)NSString *name;

@end

