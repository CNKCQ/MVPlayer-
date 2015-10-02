//
//  ChoiceViewController.m
//  MVPlayer
//
//  Created by Jack on 15/10/2.
//  Copyright © 2015年 Jack. All rights reserved.
//

#import "ChoiceViewController.h"

@implementation ChoiceViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    /**设置状态栏为白色*/
    self.navigationController.navigationBar.barStyle = UIStatusBarStyleLightContent;
    
}

- (BOOL)prefersStatusBarHidden{
    return NO;
}

@end
