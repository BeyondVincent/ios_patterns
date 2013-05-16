//
//  BVClient.m
//  FactoryMethodPattern
//
//  Created by BeyondVincent on 13-5-15.
//  Copyright (c) 2013年 BeyondVincent. All rights reserved.
//

#import "BVClient.h"

#import "BVShapeFactory.h"
#import "BVCircleShapeFactory.h"
#import "BVSquareShapeFactory.h"

#import "BVShape.h"
#import "BVCircleShape.h"
#import "BVSquareShape.h"

@implementation BVClient

-(void)doSomething
{
    // 工厂方法的实例化
    BVShapeFactory *circleShapefactory = [[BVCircleShapeFactory alloc] init];
    BVShapeFactory *squareShapefactory = [[BVSquareShapeFactory alloc] init];
    
    // 通过工厂方法实例化对应的形状
    BVShape *circleShape = [circleShapefactory factoryMethod];
    BVShape *squareShape = [squareShapefactory factoryMethod];
    
    // 调用形状的方法
    [circleShape draw];
    [squareShape draw];
}

@end
