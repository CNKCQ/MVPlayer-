//
//  NetworkService.m
//  MVPlayer
//
//  Created by Jack on 15/10/3.
//  Copyright © 2015年 Jack. All rights reserved.
//

#import "NetworkService.h"
#import "NetworkPort.h"

@implementation NetworkService

+ (void)homeRequestWithURL:(NSString *)url parameters:(NSMutableDictionary *)params success:(void(^)(id data))successOperation failure:(void(^)(NSError *error))failureOperation{
    
    NSString *HomeURL = [NSString stringWithFormat:@"%@%@",MVURL,HOME_REQUESTURL];
    
    [NetworkPort GETRequestWithURL:HomeURL parameters:params success:^(id data) {
        
        successOperation(data);
    } failure:^(NSError *error) {
        
        failureOperation(error);
    }];
    
}
+ (void)videoDetailRequestWithURL:(NSString *)url parameters:(NSMutableDictionary *)params success:(void(^)(id data))successOperation failure:(void(^)(NSError *error))failureOperation{
    
    [NetworkPort GETRequestWithURL:url parameters:params success:^(id data) {
        
        successOperation(data);
    } failure:^(NSError *error) {
        
        failureOperation(error);
    }];
    
}
+ (void)getRecommendRequestWithURL:(NSString *)url parameters:(NSMutableDictionary *)params success:(void(^)(id data))successOperation failure:(void(^)(NSError *error))failureOperation{
    
    [NetworkPort GETRequestWithURL:url parameters:params success:^(id data) {
        
        successOperation(data);
    } failure:^(NSError *error) {
        
        failureOperation(error);
    }];
}

@end
