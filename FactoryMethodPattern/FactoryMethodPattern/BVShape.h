//
//  BVShape.h
//  FactoryMethodPattern
//
//  Created by BeyondVincent on 13-5-15.
//  Copyright (c) 2013年 BeyondVincent. All rights reserved.
//

#define BV_Exception_Format @"在%@的子类中必须override:%@方法"

@interface BVShape : NSObject

@property (nonatomic, weak)NSString *name;

// 子类必须重写这个draw方法，否则会抛出异常错误
-(void)draw;

@end
