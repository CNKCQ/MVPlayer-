//
//  Videos.h
//
//  Created by Jack  on 15/10/4
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GameInformation;

@interface Videos : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *pv;
@property (nonatomic, strong) NSString *plid;
@property (nonatomic, strong) NSString *image800x450;
@property (nonatomic, strong) NSString *yaofeng;
@property (nonatomic, assign) double isAlbumcover;
@property (nonatomic, strong) NSString *iid;
@property (nonatomic, strong) NSString *shortDesc;
@property (nonatomic, strong) NSString *smallImg;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, assign) double urlIncludeIdsCount;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *ownerId;
@property (nonatomic, strong) NSString *bigImg;
@property (nonatomic, strong) NSString *cornerImage;
@property (nonatomic, strong) NSString *ownerNick;
@property (nonatomic, strong) NSString *stripeBR;
@property (nonatomic, strong) NSString *aid;
@property (nonatomic, strong) GameInformation *gameInformation;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
