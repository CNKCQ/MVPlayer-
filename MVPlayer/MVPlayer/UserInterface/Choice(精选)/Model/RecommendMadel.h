//
//  RecommendMadel.h
//
//  Created by Jack  on 15/10/6
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ReqInfo;

@interface RecommendMadel : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *status;
@property (nonatomic, assign) double errorCodeApi;
@property (nonatomic, assign) double pcode;
@property (nonatomic, strong) ReqInfo *reqInfo;
@property (nonatomic, strong) NSString *cacheKeyName;
@property (nonatomic, strong) NSArray *results;
@property (nonatomic, assign) double total;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, assign) double apiExpiredAt;
@property (nonatomic, strong) NSString *statusApi;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
