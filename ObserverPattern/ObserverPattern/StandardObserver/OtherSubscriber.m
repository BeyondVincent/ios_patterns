//
//  OtherSubscriber.m
//  ObserverPattern
//
//  Created by BeyondVincent on 13-5-5.
//  Copyright (c) 2013年 BeyondVincent. All rights reserved.
//

#import "OtherSubscriber.h"

@implementation OtherSubscriber

-(void) valueChanged:(NSString *)valueName newValue:(NSString *)newValue
{
    NSLog(@"OtherSubscriber输出: 值 %@ 已变为 %@", valueName, newValue);
}

@end
