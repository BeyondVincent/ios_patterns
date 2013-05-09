//
//  BVNonARCSingleton.h
//  SingletonPattern
//
//  Created by BeyondVincent on 13-5-9.
//  Copyright (c) 2013年 BeyondVincent. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BVNonARCSingleton : NSObject

@property  ( nonatomic, retain) NSString  *tempProperty;
+ (BVNonARCSingleton *)sharedInstance;

@end
