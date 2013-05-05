//
//  BVViewController.m
//  ObserverPattern
//
//  Created by BeyondVincent on 13-5-5.
//  Copyright (c) 2013年 BeyondVincent. All rights reserved.
//

#import "BVViewController.h"
#import "KVOSubject.h"
#import "KVOObserver.h"
#import "StandardSubjectImplementation.h"
#import "SomeSubscriber.h"
#import "OtherSubscriber.h"

#define AnyNotification @"broadcastMessage"

@interface BVViewController ()

@end

@implementation BVViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

// 在通知中心(NSNotificationCenter)中注册观察者
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(update:)
                                                 name:AnyNotification
                                               object:nil];
}

// 从通知中心(NSNotificationCenter)中移除观察者
- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:AnyNotification
                                                  object:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark- 通知中心
// 利用通知中心发送一个通知
- (IBAction)btnNotificationCenterTest:(id)sender
{
    NSNotificationCenter  * notificationCenter = [ NSNotificationCenter  defaultCenter];    
    NSNotification  * broadcastMessage = [NSNotification notificationWithName: AnyNotification object: self];
    
    // 发送一个名为AnyNotification(broadcastMessage)的通知给观察者
    [notificationCenter postNotification : broadcastMessage];    
}

// 收到通知中心发来的通知
-(void)update:(NSNotification *) notification
{
    if ([[notification name] isEqualToString:AnyNotification])
        NSLog (@"成功收到通知中心发来的名为%@的通知", AnyNotification);
}

#pragma mark- KVO
- (IBAction)btnKVOObservationTest:(id)sender {
    KVOSubject *kvoSubj = [[KVOSubject alloc] init];
    KVOObserver *kvoObserver = [[KVOObserver alloc] init];
    
    [kvoSubj addObserver:kvoObserver forKeyPath:@"changeableProperty"
                 options:NSKeyValueObservingOptionNew context:nil];
    
    kvoSubj.changeableProperty = @"新的一个值";
    
    [kvoSubj setValue:@"新的一个值" forKey:@"changeableProperty"];
    
    [kvoSubj removeObserver:kvoObserver forKeyPath:@"changeableProperty"];
}

#pragma mark- 标准Observer
- (IBAction)btnStandardObservationTest:(id)sender {
    StandardSubjectImplementation *subj = [[StandardSubjectImplementation alloc] init];
    SomeSubscriber *someSubscriber = [[SomeSubscriber alloc] init];
    OtherSubscriber *otherSubscriber = [[OtherSubscriber alloc] init];
    
    [subj addObserver:someSubscriber];
    [subj addObserver: otherSubscriber];
    
    [subj changeValue:@"version" andValue:@"1.0.0"];
}


#pragma mark- 标准的观察者模式

@end
