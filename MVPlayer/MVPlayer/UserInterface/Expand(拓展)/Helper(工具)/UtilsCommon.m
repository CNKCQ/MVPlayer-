//
//  UtilsCommon.m
//  MVPlayer
//
//  Created by Jack on 15/10/3.
//  Copyright © 2015年 Jack. All rights reserved.
//

#import "UtilsCommon.h"

@implementation UtilsCommon

#pragma mark 创建一个文件夹
+(NSString *)create:(NSString *)filename{
    if (filename) {
        NSFileManager *fileManager = [NSFileManager defaultManager];
        NSArray     *paths      = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString    *docstring  = [paths objectAtIndex:0];
        NSString    * filePaths = [[NSString alloc]initWithFormat:@"%@/%@",docstring,filename];
        [fileManager createDirectoryAtPath:filePaths withIntermediateDirectories:YES attributes:nil error:nil];
        return filePaths;
    }
    return nil;
}

@end
