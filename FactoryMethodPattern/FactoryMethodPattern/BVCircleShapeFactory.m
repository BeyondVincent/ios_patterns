//
//  BVCircleShapeFactory.m
//  FactoryMethodPattern
//
//  Created by BeyondVincent on 13-5-15.
//  Copyright (c) 2013年 BeyondVincent. All rights reserved.
//

#import "BVCircleShapeFactory.h"

@implementation BVCircleShapeFactory

-(BVShape *)factoryMethod
{
    return [[BVCircleShape alloc] init];
}

@end
