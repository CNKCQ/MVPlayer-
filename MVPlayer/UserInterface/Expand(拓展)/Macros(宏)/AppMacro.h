//
//  AppMacro.h
//  MVPlayer
//
//  Created by Jack on 15/8/25.
//  Copyright (c) 2015年 Jack. All rights reserved.
//

#ifndef MVPlayer_AppMacro_h
#define MVPlayer_AppMacro_h


#define DEBUG_MODE


#ifdef  DEBUG_MODE
//测试环境
#define MVURL www.baidu.com
#define DEBUGLOG
#else
//开发环境
#define MVURL www.tudou.com

#endif

#ifdef  DEBUGLOG

#define debugLog(...) NSLog(__VA_ARGS__)
#define debugMethod() NSLog(@"%s", __func__)

#else

#define debugLog(...)
#define debugMethod()

#endif


#endif
