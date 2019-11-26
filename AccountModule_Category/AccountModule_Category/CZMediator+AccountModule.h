//
//  CZMediator+AccountModule.h
//  AccountModule_Category
//
//  Created by NB_Mac on 2019/11/26.
//  Copyright © 2019 NB_Mac. All rights reserved.
//

#import "CZMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface CZMediator (AccountModule)

/**
 登录
 */
-(UIViewController *)Account_viewControllerForLogin;

/**
 *登陆状态
 **/
- (BOOL)Account_statusForLogin;
/**
 *登陆状态改变
 **/
- (NSString *)Account_nameForLoginStatusChangeNotification;
@end

NS_ASSUME_NONNULL_END
