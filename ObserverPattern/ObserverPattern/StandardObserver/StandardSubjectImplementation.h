//
//  StandardSubjectImplementation.h
//  ObserverPattern
//
//  Created by BeyondVincent on 13-5-5.
//  Copyright (c) 2013年 BeyondVincent. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StandardSubject.h"

@interface StandardSubjectImplementation : NSObject <StandardSubject>
{
    @private NSString *_valueName;
    @private NSString *_newValue;
}

@property (nonatomic, strong) NSMutableSet *observerCollection;

-(void)changeValue:(NSString *)valueName andValue:(NSString *) newValue;

@end
