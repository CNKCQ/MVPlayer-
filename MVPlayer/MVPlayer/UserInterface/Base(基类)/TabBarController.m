//
//  TabBarController.m
//  MVPlayer
//
//  Created by Jack on 15/10/2.
//  Copyright © 2015年 Jack. All rights reserved.
//

#import "TabBarController.h"
#import "NavigationController.h"
#import "BaseViewController.h"
#import "ChoiceViewController.h"
#import "SubscribeViewController.h"
#import "DiscoverViewController.h"
#import "MineViewController.h"

@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ChoiceViewController *choiceViewController = [[ChoiceViewController alloc] init];
    [self addChildController:choiceViewController title:@"精选" imageString:@"ic_tab_home" selectedImageString:@"ic_tab_home_select"];
    SubscribeViewController *subscribeViewController = [[SubscribeViewController alloc] init];
    [self addChildController:subscribeViewController title:@"订阅" imageString:@"ic_tab_rss" selectedImageString:@"ic_tab_rss_select"];
    DiscoverViewController *discoverViewController = [[DiscoverViewController alloc] init];
    [self addChildController:discoverViewController title:@"发现" imageString:@"ic_tab_discover" selectedImageString:@"ic_tab_discover_select"];
    MineViewController *mineViewController = [[MineViewController alloc] init];
    [self addChildController:mineViewController title:@"我" imageString:@"ic_tab_my" selectedImageString:@"ic_tab_my_select"];

}

- (void)addChildController:(UIViewController *)childController title:(NSString *)title imageString:(NSString *)imageString selectedImageString:(NSString *)selectedImageString{
    
    childController.title = title;
    childController.tabBarItem.image = [[UIImage imageNamed:imageString] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childController.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImageString] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    // 设置文字的样式
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = UIColorWithRGB(123, 123, 123);
    NSMutableDictionary *selectTextAttrs = [NSMutableDictionary dictionary];
    selectTextAttrs[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [childController.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    [childController.tabBarItem setTitleTextAttributes:selectTextAttrs forState:UIControlStateSelected];
    
    NavigationController *navigationController = [[NavigationController alloc] initWithRootViewController:childController];
    [self addChildViewController:navigationController];
    
}

@end
