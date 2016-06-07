//
//  BaseTabBarController.h
//  Orange
//
//  Created by JMiOSDevelop on 15/9/16.
//  Copyright (c) 2015年 teshehui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseTabBarController : UITabBarController

// 特殊效果
@property (nonatomic, assign) NSInteger index;

- (void)setupRootViewControllers:(NSMutableArray *)vcArray withTitle:(NSMutableArray *)titleArray withDefultImage:(NSMutableArray *)defultArray withSelectImage:(NSMutableArray *)selectArray;

@end// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com