//
//  Banner.m
//
//  Created by Jack  on 15/10/4
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "Banner.h"
#import "VipInformation.h"
#import "GameInformation.h"


NSString *const kBannerIid = @"iid";
NSString *const kBannerPlid = @"plid";
NSString *const kBannerUrlIncludeIdsCount = @"url_include_ids_count";
NSString *const kBannerImage1452578 = @"image_1452_578";
NSString *const kBannerIsAlbumcover = @"is_albumcover";
NSString *const kBannerShortDesc = @"short_desc";
NSString *const kBannerImage800450 = @"image_800_450";
NSString *const kBannerUrl = @"url";
NSString *const kBannerPlatformForUrlType = @"platform_for_url_type";
NSString *const kBannerImage726289 = @"image_726_289";
NSString *const kBannerTitle = @"title";
NSString *const kBannerSmallImg = @"small_img";
NSString *const kBannerImage640310 = @"image_640_310";
NSString *const kBannerType = @"type";
NSString *const kBannerBigImg = @"big_img";
NSString *const kBannerBrowserForUrlType = @"browser_for_url_type";
NSString *const kBannerVipInformation = @"vip_information";
NSString *const kBannerAid = @"aid";
NSString *const kBannerGameInformation = @"game_information";


@interface Banner ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Banner

@synthesize iid = _iid;
@synthesize plid = _plid;
@synthesize urlIncludeIdsCount = _urlIncludeIdsCount;
@synthesize image1452578 = _image1452578;
@synthesize isAlbumcover = _isAlbumcover;
@synthesize shortDesc = _shortDesc;
@synthesize image800450 = _image800450;
@synthesize url = _url;
@synthesize platformForUrlType = _platformForUrlType;
@synthesize image726289 = _image726289;
@synthesize title = _title;
@synthesize smallImg = _smallImg;
@synthesize image640310 = _image640310;
@synthesize type = _type;
@synthesize bigImg = _bigImg;
@synthesize browserForUrlType = _browserForUrlType;
@synthesize vipInformation = _vipInformation;
@synthesize aid = _aid;
@synthesize gameInformation = _gameInformation;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]]) {
            self.iid = [self objectOrNilForKey:kBannerIid fromDictionary:dict];
            self.plid = [self objectOrNilForKey:kBannerPlid fromDictionary:dict];
            self.urlIncludeIdsCount = [[self objectOrNilForKey:kBannerUrlIncludeIdsCount fromDictionary:dict] doubleValue];
            self.image1452578 = [self objectOrNilForKey:kBannerImage1452578 fromDictionary:dict];
            self.isAlbumcover = [[self objectOrNilForKey:kBannerIsAlbumcover fromDictionary:dict] doubleValue];
            self.shortDesc = [self objectOrNilForKey:kBannerShortDesc fromDictionary:dict];
            self.image800450 = [self objectOrNilForKey:kBannerImage800450 fromDictionary:dict];
            self.url = [self objectOrNilForKey:kBannerUrl fromDictionary:dict];
            self.platformForUrlType = [self objectOrNilForKey:kBannerPlatformForUrlType fromDictionary:dict];
            self.image726289 = [self objectOrNilForKey:kBannerImage726289 fromDictionary:dict];
            self.title = [self objectOrNilForKey:kBannerTitle fromDictionary:dict];
            self.smallImg = [self objectOrNilForKey:kBannerSmallImg fromDictionary:dict];
            self.image640310 = [self objectOrNilForKey:kBannerImage640310 fromDictionary:dict];
            self.type = [self objectOrNilForKey:kBannerType fromDictionary:dict];
            self.bigImg = [self objectOrNilForKey:kBannerBigImg fromDictionary:dict];
            self.browserForUrlType = [[self objectOrNilForKey:kBannerBrowserForUrlType fromDictionary:dict] doubleValue];
            self.vipInformation = [VipInformation modelObjectWithDictionary:[dict objectForKey:kBannerVipInformation]];
            self.aid = [self objectOrNilForKey:kBannerAid fromDictionary:dict];
            self.gameInformation = [GameInformation modelObjectWithDictionary:[dict objectForKey:kBannerGameInformation]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.iid forKey:kBannerIid];
    [mutableDict setValue:self.plid forKey:kBannerPlid];
    [mutableDict setValue:[NSNumber numberWithDouble:self.urlIncludeIdsCount] forKey:kBannerUrlIncludeIdsCount];
    [mutableDict setValue:self.image1452578 forKey:kBannerImage1452578];
    [mutableDict setValue:[NSNumber numberWithDouble:self.isAlbumcover] forKey:kBannerIsAlbumcover];
    [mutableDict setValue:self.shortDesc forKey:kBannerShortDesc];
    [mutableDict setValue:self.image800450 forKey:kBannerImage800450];
    [mutableDict setValue:self.url forKey:kBannerUrl];
    [mutableDict setValue:self.platformForUrlType forKey:kBannerPlatformForUrlType];
    [mutableDict setValue:self.image726289 forKey:kBannerImage726289];
    [mutableDict setValue:self.title forKey:kBannerTitle];
    [mutableDict setValue:self.smallImg forKey:kBannerSmallImg];
    [mutableDict setValue:self.image640310 forKey:kBannerImage640310];
    [mutableDict setValue:self.type forKey:kBannerType];
    [mutableDict setValue:self.bigImg forKey:kBannerBigImg];
    [mutableDict setValue:[NSNumber numberWithDouble:self.browserForUrlType] forKey:kBannerBrowserForUrlType];
    [mutableDict setValue:[self.vipInformation dictionaryRepresentation] forKey:kBannerVipInformation];
    [mutableDict setValue:self.aid forKey:kBannerAid];
    [mutableDict setValue:[self.gameInformation dictionaryRepresentation] forKey:kBannerGameInformation];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description 
{
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict
{
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];

    self.iid = [aDecoder decodeObjectForKey:kBannerIid];
    self.plid = [aDecoder decodeObjectForKey:kBannerPlid];
    self.urlIncludeIdsCount = [aDecoder decodeDoubleForKey:kBannerUrlIncludeIdsCount];
    self.image1452578 = [aDecoder decodeObjectForKey:kBannerImage1452578];
    self.isAlbumcover = [aDecoder decodeDoubleForKey:kBannerIsAlbumcover];
    self.shortDesc = [aDecoder decodeObjectForKey:kBannerShortDesc];
    self.image800450 = [aDecoder decodeObjectForKey:kBannerImage800450];
    self.url = [aDecoder decodeObjectForKey:kBannerUrl];
    self.platformForUrlType = [aDecoder decodeObjectForKey:kBannerPlatformForUrlType];
    self.image726289 = [aDecoder decodeObjectForKey:kBannerImage726289];
    self.title = [aDecoder decodeObjectForKey:kBannerTitle];
    self.smallImg = [aDecoder decodeObjectForKey:kBannerSmallImg];
    self.image640310 = [aDecoder decodeObjectForKey:kBannerImage640310];
    self.type = [aDecoder decodeObjectForKey:kBannerType];
    self.bigImg = [aDecoder decodeObjectForKey:kBannerBigImg];
    self.browserForUrlType = [aDecoder decodeDoubleForKey:kBannerBrowserForUrlType];
    self.vipInformation = [aDecoder decodeObjectForKey:kBannerVipInformation];
    self.aid = [aDecoder decodeObjectForKey:kBannerAid];
    self.gameInformation = [aDecoder decodeObjectForKey:kBannerGameInformation];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_iid forKey:kBannerIid];
    [aCoder encodeObject:_plid forKey:kBannerPlid];
    [aCoder encodeDouble:_urlIncludeIdsCount forKey:kBannerUrlIncludeIdsCount];
    [aCoder encodeObject:_image1452578 forKey:kBannerImage1452578];
    [aCoder encodeDouble:_isAlbumcover forKey:kBannerIsAlbumcover];
    [aCoder encodeObject:_shortDesc forKey:kBannerShortDesc];
    [aCoder encodeObject:_image800450 forKey:kBannerImage800450];
    [aCoder encodeObject:_url forKey:kBannerUrl];
    [aCoder encodeObject:_platformForUrlType forKey:kBannerPlatformForUrlType];
    [aCoder encodeObject:_image726289 forKey:kBannerImage726289];
    [aCoder encodeObject:_title forKey:kBannerTitle];
    [aCoder encodeObject:_smallImg forKey:kBannerSmallImg];
    [aCoder encodeObject:_image640310 forKey:kBannerImage640310];
    [aCoder encodeObject:_type forKey:kBannerType];
    [aCoder encodeObject:_bigImg forKey:kBannerBigImg];
    [aCoder encodeDouble:_browserForUrlType forKey:kBannerBrowserForUrlType];
    [aCoder encodeObject:_vipInformation forKey:kBannerVipInformation];
    [aCoder encodeObject:_aid forKey:kBannerAid];
    [aCoder encodeObject:_gameInformation forKey:kBannerGameInformation];
}

- (id)copyWithZone:(NSZone *)zone
{
    Banner *copy = [[Banner alloc] init];
    
    if (copy) {

        copy.iid = [self.iid copyWithZone:zone];
        copy.plid = [self.plid copyWithZone:zone];
        copy.urlIncludeIdsCount = self.urlIncludeIdsCount;
        copy.image1452578 = [self.image1452578 copyWithZone:zone];
        copy.isAlbumcover = self.isAlbumcover;
        copy.shortDesc = [self.shortDesc copyWithZone:zone];
        copy.image800450 = [self.image800450 copyWithZone:zone];
        copy.url = [self.url copyWithZone:zone];
        copy.platformForUrlType = [self.platformForUrlType copyWithZone:zone];
        copy.image726289 = [self.image726289 copyWithZone:zone];
        copy.title = [self.title copyWithZone:zone];
        copy.smallImg = [self.smallImg copyWithZone:zone];
        copy.image640310 = [self.image640310 copyWithZone:zone];
        copy.type = [self.type copyWithZone:zone];
        copy.bigImg = [self.bigImg copyWithZone:zone];
        copy.browserForUrlType = self.browserForUrlType;
        copy.vipInformation = [self.vipInformation copyWithZone:zone];
        copy.aid = [self.aid copyWithZone:zone];
        copy.gameInformation = [self.gameInformation copyWithZone:zone];
    }
    
    return copy;
}


@end
