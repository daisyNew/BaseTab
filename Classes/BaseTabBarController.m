//
//  BaseTabBarController.m
//  Orange
//
//  Created by JMiOSDevelop on 15/9/16.
//  Copyright (c) 2015年 teshehui. All rights reserved.
//

#import "BaseTabBarController.h"
#import "BaseNavigationController.h"


@interface BaseTabBarController ()

@end

@implementation BaseTabBarController

#pragma mark - life cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupTabBarControllerAppearance];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - private methods

- (void)setupTabBarControllerAppearance
{
    // TabBar背景颜色 (没设置背景图片的时候起作用)
    [UITabBar appearance].barTintColor = [UIColor whiteColor];
    // TabBar背景图片
    [[UITabBar appearance] setBackgroundImage:[UIImage imageNamed:@"1"]];
//    [UITabBar appearance].tintColor = [UIColor colorWithRed:255/255.0 green:102/255.0 blue:0 alpha:1]; // TabBar图标及文字颜色
}


- (void)setupRootViewControllers:(NSMutableArray *)vcArray withTitle:(NSMutableArray *)titleArray withDefultImage:(NSMutableArray *)defultArray withSelectImage:(NSMutableArray *)selectArray
{
    NSMutableArray *viewControllerArr = [NSMutableArray array];
    for (int i = 0; i < vcArray.count; i++) {
        BaseNavigationController *homeNavContoller = [[BaseNavigationController alloc] initWithRootViewController:vcArray[i]];
        homeNavContoller.tabBarItem = [[UITabBarItem alloc] initWithTitle:titleArray[i]
                                                                    image:[self getOriginalImageWithName:defultArray[i]]
                                                            selectedImage:[self getOriginalImageWithName:selectArray[i]]]; // 44px@2x
        [viewControllerArr addObject:homeNavContoller];
        
    }
    self.viewControllers = viewControllerArr;
    
    // 统一设置Item标题颜色及距离
    for (UIViewController *vc in self.viewControllers) {
        [vc.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor grayColor],
                                                NSFontAttributeName : [UIFont boldSystemFontOfSize:10.0]}
                                     forState:UIControlStateNormal]; // 设置Item未选中颜色
        [vc.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor colorWithRed:255/255.0 green:102/255.0 blue:0 alpha:1]}
                                     forState:UIControlStateSelected]; // 设置Item选中颜色
        

        [vc.tabBarItem setTitlePositionAdjustment: UIOffsetMake(0, -3)];
    }
    
#pragma mark ------ 设置tabBarItem的大小
    
    for (int i = 0; i < self.viewControllers.count; i++) {
        if (i == _index) {
            UIViewController *tempVC = self.viewControllers[i];
            [tempVC.tabBarItem setImageInsets:UIEdgeInsetsMake(-12, 0, 12, 0)];
        }
    }

    
}

- (UIImage *)getOriginalImageWithName:(NSString *)name
{
    return [[UIImage imageNamed:name] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

@end// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com