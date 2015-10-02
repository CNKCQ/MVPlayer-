//
//  UtilsMacro.h
//  MVPlayer
//
//  Created by Jack on 15/8/25.
//  Copyright (c) 2015年 Jack. All rights reserved.
//

/**
 *  工具类常量
 */
#ifndef MVPlayer_UtilsMacro_h
#define MVPlayer_UtilsMacro_h

/** 主题背景色 */
#define View_Background_Color UIColorWithRGB(243.0f,244.0f,246.0f)
/** 线条蓝色 */
#define Blue_Line_Color UIColorWithRGB(78.0f,161.0f,255.0f)
/** 随机色 */
#define Random_Color UIColorWithRGB(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))
/** RGB */
#define UIColorWithRGB(r,g,b) [UIColor colorWithRed:(r)/225.f green:(g)/225.f blue:(b)/225.f alpha:1.0f]
/** RGBA */
#define UIColorWithRGBA(r,g,b,a) [UIColor colorWithRed:(r)/225.f green:(g)/225.f blue:(b)/225.f alpha:(a)]

/**屏幕宽度*/
#define WIDTH ([UIScreen mainScreen].bounds.size.width)
/**屏幕高度*/
#define HEIGHT ([UIScreen mainScreen].bounds.size.height)

/**统一的字体大小*/
#define FONT_SIZE [UIFont systemFontOfSize:13.f]

#define    IS_IPHONEPlus (([[UIScreen mainScreen] bounds].size.width-414)?NO:YES)
#define    IS_IPHONE6    (([[UIScreen mainScreen] bounds].size.width-375)?NO:YES)
#define    IS_IPHONE5    (([[UIScreen mainScreen] bounds].size.height-568)?NO:YES)
#define    IS_IPHONE4    (([[UIScreen mainScreen] bounds].size.width-320)?NO:YES)
#define    IOS6 [[[UIDevice currentDevice] systemVersion] floatValue] <7.0


#endif
