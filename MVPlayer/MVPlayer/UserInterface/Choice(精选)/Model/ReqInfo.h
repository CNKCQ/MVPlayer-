//
//  ReqInfo.h
//
//  Created by Jack  on 15/10/6
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface ReqInfo : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *userid;
@property (nonatomic, strong) NSString *yjuid;
@property (nonatomic, strong) NSString *apt;
@property (nonatomic, strong) NSString *reqId;
@property (nonatomic, strong) NSString *pg;
@property (nonatomic, strong) NSString *ord;
@property (nonatomic, strong) NSString *abver;
@property (nonatomic, strong) NSString *md;
@property (nonatomic, strong) NSString *requestType;
@property (nonatomic, strong) NSString *juid;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
