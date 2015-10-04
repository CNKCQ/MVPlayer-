//
//  Banner.h
//
//  Created by Jack  on 15/10/4
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class VipInformation, GameInformation;

@interface Banner : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *iid;
@property (nonatomic, strong) NSString *plid;
@property (nonatomic, assign) double urlIncludeIdsCount;
@property (nonatomic, strong) NSString *image1452578;
@property (nonatomic, assign) double isAlbumcover;
@property (nonatomic, strong) NSString *shortDesc;
@property (nonatomic, strong) NSString *image800450;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) NSString *platformForUrlType;
@property (nonatomic, strong) NSString *image726289;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *smallImg;
@property (nonatomic, strong) NSString *image640310;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *bigImg;
@property (nonatomic, assign) double browserForUrlType;
@property (nonatomic, strong) VipInformation *vipInformation;
@property (nonatomic, strong) NSString *aid;
@property (nonatomic, strong) GameInformation *gameInformation;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
