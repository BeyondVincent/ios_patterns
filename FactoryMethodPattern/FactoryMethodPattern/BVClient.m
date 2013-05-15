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
    BVShapeFactory *circleShapefactory = [[BVCircleShapeFactory alloc] init];
    BVShapeFactory *squareShapefactory = [[BVSquareShapeFactory alloc] init];
    
    BVShape *circleShape = [circleShapefactory factoryMethod];
    BVShape *squareShape = [squareShapefactory factoryMethod];
    
    [circleShape draw];
    [squareShape draw];
}

@end
