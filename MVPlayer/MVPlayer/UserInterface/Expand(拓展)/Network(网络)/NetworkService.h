//
//  NetworkService.h
//  MVPlayer
//
//  Created by Jack on 15/10/3.
//  Copyright © 2015年 Jack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkService : NSObject

/**首页数据获取*/
+ (void)homeRequestWithURL:(NSString *)url parameters:(NSMutableDictionary *)params success:(void(^)(id data))successOperation failure:(void(^)(NSError *error))failureOperation;

/**视频详情数据获取*/
+ (void)videoDetailRequestWithURL:(NSString *)url parameters:(NSMutableDictionary *)params success:(void(^)(id data))successOperation failure:(void(^)(NSError *error))failureOperation;

/**视频推荐数据获取*/
+ (void)getRecommendRequestWithURL:(NSString *)url parameters:(NSMutableDictionary *)params success:(void(^)(id data))successOperation failure:(void(^)(NSError *error))failureOperation;


@end
