//
//  BVSquareShapeFactory.m
//  FactoryMethodPattern
//
//  Created by BeyondVincent on 13-5-15.
//  Copyright (c) 2013年 BeyondVincent. All rights reserved.
//

#import "BVSquareShapeFactory.h"

@implementation BVSquareShapeFactory

-(BVShape *)factoryMethod
{
    return [[BVSquareShape alloc] init];
}

@end
