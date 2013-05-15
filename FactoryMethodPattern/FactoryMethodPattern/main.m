//
//  main.m
//  FactoryMethodPattern
//
//  Created by BeyondVincent on 13-5-15.
//  Copyright (c) 2013年 BeyondVincent. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "BVAppDelegate.h"
#import "BVClient.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        BVClient *client = [[BVClient alloc] init];
        [client doSomething];
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([BVAppDelegate class]));
    }
}
