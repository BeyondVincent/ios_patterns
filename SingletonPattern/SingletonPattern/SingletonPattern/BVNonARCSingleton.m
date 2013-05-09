//
//  BVNonARCSingleton.m
//  SingletonPattern
//
//  Created by BeyondVincent on 13-5-9.
//  Copyright (c) 2013年 BeyondVincent. All rights reserved.
//

#import "BVNonARCSingleton.h"

@implementation BVNonARCSingleton

static BVNonARCSingleton *sharedInstance = nil;

// 获取一个sharedInstance实例，如果有必要的话，实例化一个
+ (BVNonARCSingleton *)sharedInstance {
    if (sharedInstance == nil) {
        sharedInstance = [[super allocWithZone:NULL] init];
    }

    return sharedInstance;
}

// 线程安全的
//+ (BVNonARCSingleton *)sharedInstance {
//    // 保证在实例化的时候是线程安全的（当然，该方法不能保证该单例中所有方法的调用都是线程安全的）
//    @synchronized (self)
//    {
//        if(sharedInstance == nil)
//        {
//            sharedInstance = [[super allocWithZone:NULL] init];
//        }
//    }
//    
//    return sharedInstance;
//}


// 当第一次使用这个单例时，会调用这个init方法。
- (id)init
{
    self = [super init];
    
    if (self) {
        // 通常在这里做一些相关的初始化任务
    }
    
    return self;
}

// 这个dealloc方法永远都不会被调用--因为在程序的生命周期内容，该单例一直都存在。（所以该方法可以不用实现）
-(void)dealloc
{
    [super dealloc];
}

// 通过返回当前的sharedInstance实例，就能防止实例化一个新的对象。
+ (id)allocWithZone:(NSZone*)zone {
    return [[self sharedInstance] retain];
}

// 同样，不希望生成单例的多个拷贝。
- (id)copyWithZone:(NSZone *)zone {
    return self;
}

// 什么也不做——该单例并不需要一个引用计数（retain counter）
- (id)retain {
    return self;
}

// 替换掉引用计数——这样就永远都不会release这个单例。
- (NSUInteger)retainCount {
    return NSUIntegerMax;
}

// 该方法是空的——不希望用户release掉这个对象。
- (oneway void)release {
    
}

//除了返回单例外，什么也不做。
- (id)autorelease {
    return self;
}

@end
