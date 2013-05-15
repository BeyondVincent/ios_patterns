//
//  BVShapeFactory.m
//  FactoryMethodPattern
//
//  Created by BeyondVincent on 13-5-15.
//  Copyright (c) 2013年 BeyondVincent. All rights reserved.
//

#import "BVShapeFactory.h"

@implementation BVShapeFactory

-(BVShape *)factoryMethod
{
    // 在此处，子类必须重写factoryMethod方法。当然，在工厂模式中，也可以在此处返回一个默认的Product。
    // 如果是通过BVShapeFactory子类的实例调用了此处的factoryMethod，则抛出一个异常：表明子类并没有重写factoryMethod方法。
    [NSException raise:NSInternalInconsistencyException
                format:BV_Exception_Format, [NSString stringWithUTF8String:object_getClassName(self)], NSStringFromSelector(_cmd)];
    
    // 下面这个return语句只是为了消除警告，实际上永远都不会执行到这里。
    return nil;
}

@end
