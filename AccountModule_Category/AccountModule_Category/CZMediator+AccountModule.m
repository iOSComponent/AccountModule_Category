//
//  CZMediator+AccountModule.m
//  AccountModule_Category
//
//  Created by NB_Mac on 2019/11/26.
//  Copyright © 2019 NB_Mac. All rights reserved.
//

#import "CZMediator+AccountModule.h"
NSString * const MediatorTargetAccount = @"Account";
NSString * const MediatorActionAccountLoginViewController = @"nativeLoginViewController";
NSString * const MediatorActionAccountLoginStatus = @"nativeLoginStatus";
NSString * const MediatorActionAccountLoginStatusChangeNotification = @"nativeLoginStatusChangeNotificationName";

@implementation CZMediator (AccountModule)
/**
 *登陆(presentViewController)
 **/
- (UIViewController *)Account_viewControllerForLogin {
    UIViewController *viewController = [self performTarget:MediatorTargetAccount action:MediatorActionAccountLoginViewController params:nil shouldCacheTarget:NO];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        return viewController;
    } else {
        return [[UIViewController alloc] init];
    }
}
/**
 *登陆状态
 **/
- (BOOL)Account_statusForLogin {
    return [[self performTarget:MediatorTargetAccount action:MediatorActionAccountLoginStatus params:nil shouldCacheTarget:NO] boolValue];
}
/**
 *登陆状态改变
 **/
- (NSString *)Account_nameForLoginStatusChangeNotification {
    return [self performTarget:MediatorTargetAccount action:MediatorActionAccountLoginStatusChangeNotification params:nil shouldCacheTarget:NO];
}

@end
