//
//  Videos.m
//
//  Created by Jack  on 15/10/4
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "Videos.h"
#import "GameInformation.h"


NSString *const kVideosPv = @"pv";
NSString *const kVideosPlid = @"plid";
NSString *const kVideosImage800x450 = @"image_800x450";
NSString *const kVideosYaofeng = @"yaofeng";
NSString *const kVideosIsAlbumcover = @"is_albumcover";
NSString *const kVideosIid = @"iid";
NSString *const kVideosShortDesc = @"short_desc";
NSString *const kVideosSmallImg = @"small_img";
NSString *const kVideosUrl = @"url";
NSString *const kVideosUrlIncludeIdsCount = @"url_include_ids_count";
NSString *const kVideosType = @"type";
NSString *const kVideosTitle = @"title";
NSString *const kVideosOwnerId = @"owner_id";
NSString *const kVideosBigImg = @"big_img";
NSString *const kVideosCornerImage = @"corner_image";
NSString *const kVideosOwnerNick = @"owner_nick";
NSString *const kVideosStripeBR = @"stripe_b_r";
NSString *const kVideosAid = @"aid";
NSString *const kVideosGameInformation = @"game_information";


@interface Videos ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Videos

@synthesize pv = _pv;
@synthesize plid = _plid;
@synthesize image800x450 = _image800x450;
@synthesize yaofeng = _yaofeng;
@synthesize isAlbumcover = _isAlbumcover;
@synthesize iid = _iid;
@synthesize shortDesc = _shortDesc;
@synthesize smallImg = _smallImg;
@synthesize url = _url;
@synthesize urlIncludeIdsCount = _urlIncludeIdsCount;
@synthesize type = _type;
@synthesize title = _title;
@synthesize ownerId = _ownerId;
@synthesize bigImg = _bigImg;
@synthesize cornerImage = _cornerImage;
@synthesize ownerNick = _ownerNick;
@synthesize stripeBR = _stripeBR;
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
            self.pv = [self objectOrNilForKey:kVideosPv fromDictionary:dict];
            self.plid = [self objectOrNilForKey:kVideosPlid fromDictionary:dict];
            self.image800x450 = [self objectOrNilForKey:kVideosImage800x450 fromDictionary:dict];
            self.yaofeng = [self objectOrNilForKey:kVideosYaofeng fromDictionary:dict];
            self.isAlbumcover = [[self objectOrNilForKey:kVideosIsAlbumcover fromDictionary:dict] doubleValue];
            self.iid = [self objectOrNilForKey:kVideosIid fromDictionary:dict];
            self.shortDesc = [self objectOrNilForKey:kVideosShortDesc fromDictionary:dict];
            self.smallImg = [self objectOrNilForKey:kVideosSmallImg fromDictionary:dict];
            self.url = [self objectOrNilForKey:kVideosUrl fromDictionary:dict];
            self.urlIncludeIdsCount = [[self objectOrNilForKey:kVideosUrlIncludeIdsCount fromDictionary:dict] doubleValue];
            self.type = [self objectOrNilForKey:kVideosType fromDictionary:dict];
            self.title = [self objectOrNilForKey:kVideosTitle fromDictionary:dict];
            self.ownerId = [self objectOrNilForKey:kVideosOwnerId fromDictionary:dict];
            self.bigImg = [self objectOrNilForKey:kVideosBigImg fromDictionary:dict];
            self.cornerImage = [self objectOrNilForKey:kVideosCornerImage fromDictionary:dict];
            self.ownerNick = [self objectOrNilForKey:kVideosOwnerNick fromDictionary:dict];
            self.stripeBR = [self objectOrNilForKey:kVideosStripeBR fromDictionary:dict];
            self.aid = [self objectOrNilForKey:kVideosAid fromDictionary:dict];
            self.gameInformation = [GameInformation modelObjectWithDictionary:[dict objectForKey:kVideosGameInformation]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.pv forKey:kVideosPv];
    [mutableDict setValue:self.plid forKey:kVideosPlid];
    [mutableDict setValue:self.image800x450 forKey:kVideosImage800x450];
    [mutableDict setValue:self.yaofeng forKey:kVideosYaofeng];
    [mutableDict setValue:[NSNumber numberWithDouble:self.isAlbumcover] forKey:kVideosIsAlbumcover];
    [mutableDict setValue:self.iid forKey:kVideosIid];
    [mutableDict setValue:self.shortDesc forKey:kVideosShortDesc];
    [mutableDict setValue:self.smallImg forKey:kVideosSmallImg];
    [mutableDict setValue:self.url forKey:kVideosUrl];
    [mutableDict setValue:[NSNumber numberWithDouble:self.urlIncludeIdsCount] forKey:kVideosUrlIncludeIdsCount];
    [mutableDict setValue:self.type forKey:kVideosType];
    [mutableDict setValue:self.title forKey:kVideosTitle];
    [mutableDict setValue:self.ownerId forKey:kVideosOwnerId];
    [mutableDict setValue:self.bigImg forKey:kVideosBigImg];
    [mutableDict setValue:self.cornerImage forKey:kVideosCornerImage];
    [mutableDict setValue:self.ownerNick forKey:kVideosOwnerNick];
    [mutableDict setValue:self.stripeBR forKey:kVideosStripeBR];
    [mutableDict setValue:self.aid forKey:kVideosAid];
    [mutableDict setValue:[self.gameInformation dictionaryRepresentation] forKey:kVideosGameInformation];

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

    self.pv = [aDecoder decodeObjectForKey:kVideosPv];
    self.plid = [aDecoder decodeObjectForKey:kVideosPlid];
    self.image800x450 = [aDecoder decodeObjectForKey:kVideosImage800x450];
    self.yaofeng = [aDecoder decodeObjectForKey:kVideosYaofeng];
    self.isAlbumcover = [aDecoder decodeDoubleForKey:kVideosIsAlbumcover];
    self.iid = [aDecoder decodeObjectForKey:kVideosIid];
    self.shortDesc = [aDecoder decodeObjectForKey:kVideosShortDesc];
    self.smallImg = [aDecoder decodeObjectForKey:kVideosSmallImg];
    self.url = [aDecoder decodeObjectForKey:kVideosUrl];
    self.urlIncludeIdsCount = [aDecoder decodeDoubleForKey:kVideosUrlIncludeIdsCount];
    self.type = [aDecoder decodeObjectForKey:kVideosType];
    self.title = [aDecoder decodeObjectForKey:kVideosTitle];
    self.ownerId = [aDecoder decodeObjectForKey:kVideosOwnerId];
    self.bigImg = [aDecoder decodeObjectForKey:kVideosBigImg];
    self.cornerImage = [aDecoder decodeObjectForKey:kVideosCornerImage];
    self.ownerNick = [aDecoder decodeObjectForKey:kVideosOwnerNick];
    self.stripeBR = [aDecoder decodeObjectForKey:kVideosStripeBR];
    self.aid = [aDecoder decodeObjectForKey:kVideosAid];
    self.gameInformation = [aDecoder decodeObjectForKey:kVideosGameInformation];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_pv forKey:kVideosPv];
    [aCoder encodeObject:_plid forKey:kVideosPlid];
    [aCoder encodeObject:_image800x450 forKey:kVideosImage800x450];
    [aCoder encodeObject:_yaofeng forKey:kVideosYaofeng];
    [aCoder encodeDouble:_isAlbumcover forKey:kVideosIsAlbumcover];
    [aCoder encodeObject:_iid forKey:kVideosIid];
    [aCoder encodeObject:_shortDesc forKey:kVideosShortDesc];
    [aCoder encodeObject:_smallImg forKey:kVideosSmallImg];
    [aCoder encodeObject:_url forKey:kVideosUrl];
    [aCoder encodeDouble:_urlIncludeIdsCount forKey:kVideosUrlIncludeIdsCount];
    [aCoder encodeObject:_type forKey:kVideosType];
    [aCoder encodeObject:_title forKey:kVideosTitle];
    [aCoder encodeObject:_ownerId forKey:kVideosOwnerId];
    [aCoder encodeObject:_bigImg forKey:kVideosBigImg];
    [aCoder encodeObject:_cornerImage forKey:kVideosCornerImage];
    [aCoder encodeObject:_ownerNick forKey:kVideosOwnerNick];
    [aCoder encodeObject:_stripeBR forKey:kVideosStripeBR];
    [aCoder encodeObject:_aid forKey:kVideosAid];
    [aCoder encodeObject:_gameInformation forKey:kVideosGameInformation];
}

- (id)copyWithZone:(NSZone *)zone
{
    Videos *copy = [[Videos alloc] init];
    
    if (copy) {

        copy.pv = [self.pv copyWithZone:zone];
        copy.plid = [self.plid copyWithZone:zone];
        copy.image800x450 = [self.image800x450 copyWithZone:zone];
        copy.yaofeng = [self.yaofeng copyWithZone:zone];
        copy.isAlbumcover = self.isAlbumcover;
        copy.iid = [self.iid copyWithZone:zone];
        copy.shortDesc = [self.shortDesc copyWithZone:zone];
        copy.smallImg = [self.smallImg copyWithZone:zone];
        copy.url = [self.url copyWithZone:zone];
        copy.urlIncludeIdsCount = self.urlIncludeIdsCount;
        copy.type = [self.type copyWithZone:zone];
        copy.title = [self.title copyWithZone:zone];
        copy.ownerId = [self.ownerId copyWithZone:zone];
        copy.bigImg = [self.bigImg copyWithZone:zone];
        copy.cornerImage = [self.cornerImage copyWithZone:zone];
        copy.ownerNick = [self.ownerNick copyWithZone:zone];
        copy.stripeBR = [self.stripeBR copyWithZone:zone];
        copy.aid = [self.aid copyWithZone:zone];
        copy.gameInformation = [self.gameInformation copyWithZone:zone];
    }
    
    return copy;
}


@end
