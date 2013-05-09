//
//  BVARCSingleton.h
//  SingletonPattern
//
//  Created by BeyondVincent on 13-5-9.
//  Copyright (c) 2013年 BeyondVincent. All rights reserved.
//

#import <Foundation/Foundation.h>

#define DEFINE_SHARED_INSTANCE_USING_BLOCK(block) \
static dispatch_once_t onceToken = 0; \
__strong static id sharedInstance = nil; \
dispatch_once(&onceToken, ^{ \
sharedInstance = block(); \
}); \
return sharedInstance; \

@interface BVARCSingleton : NSObject

@property  ( nonatomic, weak) NSString  *tempProperty;
+ (BVARCSingleton *)sharedInstance;

@end
