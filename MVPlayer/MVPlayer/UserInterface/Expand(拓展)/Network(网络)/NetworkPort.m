//
//  NetworkPort.m
//  MVPlayer
//
//  Created by Jack on 15/10/3.
//  Copyright © 2015年 Jack. All rights reserved.
//

#import "NetworkPort.h"
#import "AFNetworking.h"
#import "SDWebImageManager.h"


@implementation NetworkPort

+ (void)GETRequestWithURL:(NSString *)url parameters:(NSMutableDictionary *)params success:(void(^)(id data))successOperation failure:(void(^)(NSError *error))failureOperation{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
#ifdef DEBUG_MODE
    manager.requestSerializer.timeoutInterval = 30.f;
#else
    manager.requestSerializer.timeoutInterval = 60.f;
#endif
    manager.securityPolicy.allowInvalidCertificates = NO;
    
    [manager GET:url parameters:params success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
        
        if (responseObject) {
            successOperation(responseObject);
        }
        
    } failure:^(AFHTTPRequestOperation * _Nonnull operation, NSError * _Nonnull error) {
        failureOperation(error);
        
    }];
    
}

+ (void)POSTRequestWithURL:(NSString *)url parameters:(NSMutableDictionary *)params success:(void(^)(id data))successOperation failure:(void(^)(NSError *error))failureOperation{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.responseSerializer.acceptableContentTypes =  [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html", nil];
    [manager.requestSerializer setValue:@"keep-alive" forKey:@"Connection"];
    manager.securityPolicy.allowInvalidCertificates = NO;
    [manager POST:url parameters:params success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
        if (responseObject) {
            successOperation(responseObject);
        }
        
    } failure:^(AFHTTPRequestOperation * _Nonnull operation, NSError * _Nonnull error) {
        
        failureOperation(error);
    }];
    
}
+(void)downloadPictures:(NSString *)folder withRequestUrl:(NSString *)requestUrl  imageName:(NSString *)imageName  success:(void (^)(id data))successOperation failure:(void (^)(NSError * error))failureOperation{
    NSURL *url = [NSURL URLWithString:requestUrl];
    SDWebImageDownloader *downloader = [SDWebImageDownloader sharedDownloader];
    
    [downloader downloadImageWithURL:url options:SDWebImageDownloaderProgressiveDownload progress:^(NSInteger receivedSize, NSInteger expectedSize) {
        
        //下载进度
        
    } completed:^(UIImage *image, NSData *data, NSError *error, BOOL finished) {
        
        if (finished) {
            //文件管理器
            NSFileManager *fileManager = [NSFileManager defaultManager];
            //创建文件存放路径
            NSString *DocumentsPath = [UtilsCommon create:folder];
            //拼接路径
            NSString * filePaths = [[NSString alloc]initWithFormat:@"%@%@",DocumentsPath, [NSString stringWithFormat:@"/%@",imageName]];
            //检查文件目录是否存在
            BOOL iscunzi = [fileManager fileExistsAtPath:DocumentsPath];
            //文件存在删除
            if(iscunzi){
                //文件不存在保存本地
                [fileManager createFileAtPath:[DocumentsPath stringByAppendingString:[NSString stringWithFormat:@"/%@",imageName]] contents:data attributes:nil];
            }else{
                //删除完以后保存本地图片
                [fileManager createDirectoryAtPath:DocumentsPath withIntermediateDirectories:YES attributes:nil error:nil];
                [fileManager createFileAtPath:[DocumentsPath stringByAppendingString:[NSString stringWithFormat:@"/%@",imageName]] contents:data attributes:nil];
            }
            successOperation(filePaths);
        }else{
            failureOperation(error);
        }
        
    }];
    
}
+(BOOL)isInternetConnectionAvailable{
    
    BOOL isExistNetwork = YES;
    AFNetworkReachabilityManager *manager = [AFNetworkReachabilityManager sharedManager];
    [manager startMonitoring];
    switch (manager.networkReachabilityStatus) {
        case AFNetworkReachabilityStatusUnknown:
            isExistNetwork = YES;
            break;
        case AFNetworkReachabilityStatusNotReachable:
            isExistNetwork = NO;
            break;
        case AFNetworkReachabilityStatusReachableViaWWAN:
            isExistNetwork = YES;
            break;
        case AFNetworkReachabilityStatusReachableViaWiFi:
            isExistNetwork = YES;
            break;
        default:
            break;
    }
    [manager stopMonitoring];
    return isExistNetwork;
}
@end
