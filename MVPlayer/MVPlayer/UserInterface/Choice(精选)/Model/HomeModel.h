//
//  HomeModel.h
//
//  Created by Jack  on 15/10/4
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface HomeModel : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) double errorCodeApi;
@property (nonatomic, strong) NSArray *boxes;
@property (nonatomic, strong) NSString *indexChannelContentVersion;
@property (nonatomic, strong) NSString *searchDefaultWordForIpad;
@property (nonatomic, strong) NSString *statusApi;
@property (nonatomic, strong) NSArray *banner;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
