//
//  StandardObserver.h
//  ObserverPattern
//
//  Created by BeyondVincent on 13-5-5.
//  Copyright (c) 2013年 BeyondVincent. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol StandardObserver <NSObject>

-(void) valueChanged:(NSString *)valueName newValue:(NSString *) newValue;

@end
