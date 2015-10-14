//
//  BaseViewController.m
//  MVPlayer
//
//  Created by Jack on 15/10/2.
//  Copyright © 2015年 Jack. All rights reserved.
//

#import "BaseViewController.h"


@implementation BaseViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor = View_Background_Color;
    [self chackNetwork];
}
- (void)chackNetwork{
    if ([NetworkPort isInternetConnectionAvailable]) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"当前网络不可用,请检查网络连接!" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
 
        }];
        action.enabled = YES;
        [alert addAction:action];
        [self presentViewController:alert animated:YES completion:nil];
        
    }
    NSArray *array = @[@""];
    debugLog(@"array----%@",array[1]);
}


@end
