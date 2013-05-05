//
//  SomeSubscriber.m
//  ObserverPattern
//
//  Created by BeyondVincent on 13-5-5.
//  Copyright (c) 2013年 BeyondVincent. All rights reserved.
//

#import "SomeSubscriber.h"

@implementation SomeSubscriber

-(void) valueChanged:(NSString *)valueName newValue:(NSString *)newValue
{
    NSLog(@"SomeSubscriber输出: 值 %@ 已变为 %@", valueName, newValue);
}

@end
