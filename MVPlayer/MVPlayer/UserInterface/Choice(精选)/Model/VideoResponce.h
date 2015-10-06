//
//  VideoResponce.h
//
//  Created by Jack  on 15/10/5
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Detail;

@interface VideoResponce : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *status;
@property (nonatomic, strong) Detail *detail;
@property (nonatomic, strong) NSString *statusApi;
@property (nonatomic, assign) double errorCodeApi;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
