//
//  Detail.m
//
//  Created by Jack  on 15/10/5
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "Detail.h"


NSString *const kDetailTotalVv = @"total_vv";
NSString *const kDetailTitle = @"title";
NSString *const kDetailShowdate = @"showdate";
NSString *const kDetailCompleted = @"completed";
NSString *const kDetailNeedMoney = @"needMoney";
NSString *const kDetailFormatFlag = @"format_flag";
NSString *const kDetailAudioList = @"audioList";
NSString *const kDetailShortDesc = @"short_desc";
NSString *const kDetailExtFlag = @"extFlag";
NSString *const kDetailAid = @"aid";
NSString *const kDetailAuthors = @"authors";
NSString *const kDetailStripeBottom = @"stripe_bottom";
NSString *const kDetailType = @"type";
NSString *const kDetailCid = @"cid";
NSString *const kDetailCats = @"cats";
NSString *const kDetailGuests = @"guests";
NSString *const kDetailTips = @"tips";
NSString *const kDetailEpisodeTotal = @"episode_total";
NSString *const kDetailActors = @"actors";
NSString *const kDetailTotalComment = @"total_comment";
NSString *const kDetailImgCover = @"img_cover";
NSString *const kDetailVoiceActors = @"voiceActors";
NSString *const kDetailItemId = @"item_id";
NSString *const kDetailDirector = @"director";
NSString *const kDetailArea = @"area";
NSString *const kDetailTotalFav = @"total_fav";
NSString *const kDetailCharacters = @"characters";
NSString *const kDetailDesc = @"desc";
NSString *const kDetailChannelPic = @"channel_pic";
NSString *const kDetailSubedNum = @"subed_num";
NSString *const kDetailCategories = @"categories";
NSString *const kDetailItemMediaType = @"item_media_type";


@interface Detail ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Detail

@synthesize totalVv = _totalVv;
@synthesize title = _title;
@synthesize showdate = _showdate;
@synthesize completed = _completed;
@synthesize needMoney = _needMoney;
@synthesize formatFlag = _formatFlag;
@synthesize audioList = _audioList;
@synthesize shortDesc = _shortDesc;
@synthesize extFlag = _extFlag;
@synthesize aid = _aid;
@synthesize authors = _authors;
@synthesize stripeBottom = _stripeBottom;
@synthesize type = _type;
@synthesize cid = _cid;
@synthesize cats = _cats;
@synthesize guests = _guests;
@synthesize tips = _tips;
@synthesize episodeTotal = _episodeTotal;
@synthesize actors = _actors;
@synthesize totalComment = _totalComment;
@synthesize imgCover = _imgCover;
@synthesize voiceActors = _voiceActors;
@synthesize itemId = _itemId;
@synthesize director = _director;
@synthesize area = _area;
@synthesize totalFav = _totalFav;
@synthesize characters = _characters;
@synthesize desc = _desc;
@synthesize channelPic = _channelPic;
@synthesize subedNum = _subedNum;
@synthesize categories = _categories;
@synthesize itemMediaType = _itemMediaType;


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
            self.totalVv = [self objectOrNilForKey:kDetailTotalVv fromDictionary:dict];
            self.title = [self objectOrNilForKey:kDetailTitle fromDictionary:dict];
            self.showdate = [[self objectOrNilForKey:kDetailShowdate fromDictionary:dict] doubleValue];
            self.completed = [[self objectOrNilForKey:kDetailCompleted fromDictionary:dict] doubleValue];
            self.needMoney = [[self objectOrNilForKey:kDetailNeedMoney fromDictionary:dict] doubleValue];
            self.formatFlag = [[self objectOrNilForKey:kDetailFormatFlag fromDictionary:dict] doubleValue];
            self.audioList = [self objectOrNilForKey:kDetailAudioList fromDictionary:dict];
            self.shortDesc = [self objectOrNilForKey:kDetailShortDesc fromDictionary:dict];
            self.extFlag = [[self objectOrNilForKey:kDetailExtFlag fromDictionary:dict] doubleValue];
            self.aid = [[self objectOrNilForKey:kDetailAid fromDictionary:dict] doubleValue];
            self.authors = [self objectOrNilForKey:kDetailAuthors fromDictionary:dict];
            self.stripeBottom = [self objectOrNilForKey:kDetailStripeBottom fromDictionary:dict];
            self.type = [self objectOrNilForKey:kDetailType fromDictionary:dict];
            self.cid = [[self objectOrNilForKey:kDetailCid fromDictionary:dict] doubleValue];
            self.cats = [self objectOrNilForKey:kDetailCats fromDictionary:dict];
            self.guests = [self objectOrNilForKey:kDetailGuests fromDictionary:dict];
            self.tips = [self objectOrNilForKey:kDetailTips fromDictionary:dict];
            self.episodeTotal = [[self objectOrNilForKey:kDetailEpisodeTotal fromDictionary:dict] doubleValue];
            self.actors = [self objectOrNilForKey:kDetailActors fromDictionary:dict];
            self.totalComment = [[self objectOrNilForKey:kDetailTotalComment fromDictionary:dict] doubleValue];
            self.imgCover = [self objectOrNilForKey:kDetailImgCover fromDictionary:dict];
            self.voiceActors = [self objectOrNilForKey:kDetailVoiceActors fromDictionary:dict];
            self.itemId = [self objectOrNilForKey:kDetailItemId fromDictionary:dict];
            self.director = [self objectOrNilForKey:kDetailDirector fromDictionary:dict];
            self.area = [self objectOrNilForKey:kDetailArea fromDictionary:dict];
            self.totalFav = [[self objectOrNilForKey:kDetailTotalFav fromDictionary:dict] doubleValue];
            self.characters = [self objectOrNilForKey:kDetailCharacters fromDictionary:dict];
            self.desc = [self objectOrNilForKey:kDetailDesc fromDictionary:dict];
            self.channelPic = [self objectOrNilForKey:kDetailChannelPic fromDictionary:dict];
            self.subedNum = [[self objectOrNilForKey:kDetailSubedNum fromDictionary:dict] doubleValue];
            self.categories = [self objectOrNilForKey:kDetailCategories fromDictionary:dict];
            self.itemMediaType = [self objectOrNilForKey:kDetailItemMediaType fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.totalVv forKey:kDetailTotalVv];
    [mutableDict setValue:self.title forKey:kDetailTitle];
    [mutableDict setValue:[NSNumber numberWithDouble:self.showdate] forKey:kDetailShowdate];
    [mutableDict setValue:[NSNumber numberWithDouble:self.completed] forKey:kDetailCompleted];
    [mutableDict setValue:[NSNumber numberWithDouble:self.needMoney] forKey:kDetailNeedMoney];
    [mutableDict setValue:[NSNumber numberWithDouble:self.formatFlag] forKey:kDetailFormatFlag];
    NSMutableArray *tempArrayForAudioList = [NSMutableArray array];
    for (NSObject *subArrayObject in self.audioList) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForAudioList addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForAudioList addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForAudioList] forKey:kDetailAudioList];
    [mutableDict setValue:self.shortDesc forKey:kDetailShortDesc];
    [mutableDict setValue:[NSNumber numberWithDouble:self.extFlag] forKey:kDetailExtFlag];
    [mutableDict setValue:[NSNumber numberWithDouble:self.aid] forKey:kDetailAid];
    NSMutableArray *tempArrayForAuthors = [NSMutableArray array];
    for (NSObject *subArrayObject in self.authors) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForAuthors addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForAuthors addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForAuthors] forKey:kDetailAuthors];
    [mutableDict setValue:self.stripeBottom forKey:kDetailStripeBottom];
    [mutableDict setValue:self.type forKey:kDetailType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.cid] forKey:kDetailCid];
    [mutableDict setValue:self.cats forKey:kDetailCats];
    NSMutableArray *tempArrayForGuests = [NSMutableArray array];
    for (NSObject *subArrayObject in self.guests) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForGuests addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForGuests addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForGuests] forKey:kDetailGuests];
    [mutableDict setValue:self.tips forKey:kDetailTips];
    [mutableDict setValue:[NSNumber numberWithDouble:self.episodeTotal] forKey:kDetailEpisodeTotal];
    NSMutableArray *tempArrayForActors = [NSMutableArray array];
    for (NSObject *subArrayObject in self.actors) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForActors addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForActors addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForActors] forKey:kDetailActors];
    [mutableDict setValue:[NSNumber numberWithDouble:self.totalComment] forKey:kDetailTotalComment];
    [mutableDict setValue:self.imgCover forKey:kDetailImgCover];
    NSMutableArray *tempArrayForVoiceActors = [NSMutableArray array];
    for (NSObject *subArrayObject in self.voiceActors) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForVoiceActors addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForVoiceActors addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForVoiceActors] forKey:kDetailVoiceActors];
    [mutableDict setValue:self.itemId forKey:kDetailItemId];
    NSMutableArray *tempArrayForDirector = [NSMutableArray array];
    for (NSObject *subArrayObject in self.director) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForDirector addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForDirector addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForDirector] forKey:kDetailDirector];
    [mutableDict setValue:self.area forKey:kDetailArea];
    [mutableDict setValue:[NSNumber numberWithDouble:self.totalFav] forKey:kDetailTotalFav];
    NSMutableArray *tempArrayForCharacters = [NSMutableArray array];
    for (NSObject *subArrayObject in self.characters) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForCharacters addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForCharacters addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForCharacters] forKey:kDetailCharacters];
    [mutableDict setValue:self.desc forKey:kDetailDesc];
    [mutableDict setValue:self.channelPic forKey:kDetailChannelPic];
    [mutableDict setValue:[NSNumber numberWithDouble:self.subedNum] forKey:kDetailSubedNum];
    NSMutableArray *tempArrayForCategories = [NSMutableArray array];
    for (NSObject *subArrayObject in self.categories) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForCategories addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForCategories addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForCategories] forKey:kDetailCategories];
    [mutableDict setValue:self.itemMediaType forKey:kDetailItemMediaType];

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

    self.totalVv = [aDecoder decodeObjectForKey:kDetailTotalVv];
    self.title = [aDecoder decodeObjectForKey:kDetailTitle];
    self.showdate = [aDecoder decodeDoubleForKey:kDetailShowdate];
    self.completed = [aDecoder decodeDoubleForKey:kDetailCompleted];
    self.needMoney = [aDecoder decodeDoubleForKey:kDetailNeedMoney];
    self.formatFlag = [aDecoder decodeDoubleForKey:kDetailFormatFlag];
    self.audioList = [aDecoder decodeObjectForKey:kDetailAudioList];
    self.shortDesc = [aDecoder decodeObjectForKey:kDetailShortDesc];
    self.extFlag = [aDecoder decodeDoubleForKey:kDetailExtFlag];
    self.aid = [aDecoder decodeDoubleForKey:kDetailAid];
    self.authors = [aDecoder decodeObjectForKey:kDetailAuthors];
    self.stripeBottom = [aDecoder decodeObjectForKey:kDetailStripeBottom];
    self.type = [aDecoder decodeObjectForKey:kDetailType];
    self.cid = [aDecoder decodeDoubleForKey:kDetailCid];
    self.cats = [aDecoder decodeObjectForKey:kDetailCats];
    self.guests = [aDecoder decodeObjectForKey:kDetailGuests];
    self.tips = [aDecoder decodeObjectForKey:kDetailTips];
    self.episodeTotal = [aDecoder decodeDoubleForKey:kDetailEpisodeTotal];
    self.actors = [aDecoder decodeObjectForKey:kDetailActors];
    self.totalComment = [aDecoder decodeDoubleForKey:kDetailTotalComment];
    self.imgCover = [aDecoder decodeObjectForKey:kDetailImgCover];
    self.voiceActors = [aDecoder decodeObjectForKey:kDetailVoiceActors];
    self.itemId = [aDecoder decodeObjectForKey:kDetailItemId];
    self.director = [aDecoder decodeObjectForKey:kDetailDirector];
    self.area = [aDecoder decodeObjectForKey:kDetailArea];
    self.totalFav = [aDecoder decodeDoubleForKey:kDetailTotalFav];
    self.characters = [aDecoder decodeObjectForKey:kDetailCharacters];
    self.desc = [aDecoder decodeObjectForKey:kDetailDesc];
    self.channelPic = [aDecoder decodeObjectForKey:kDetailChannelPic];
    self.subedNum = [aDecoder decodeDoubleForKey:kDetailSubedNum];
    self.categories = [aDecoder decodeObjectForKey:kDetailCategories];
    self.itemMediaType = [aDecoder decodeObjectForKey:kDetailItemMediaType];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_totalVv forKey:kDetailTotalVv];
    [aCoder encodeObject:_title forKey:kDetailTitle];
    [aCoder encodeDouble:_showdate forKey:kDetailShowdate];
    [aCoder encodeDouble:_completed forKey:kDetailCompleted];
    [aCoder encodeDouble:_needMoney forKey:kDetailNeedMoney];
    [aCoder encodeDouble:_formatFlag forKey:kDetailFormatFlag];
    [aCoder encodeObject:_audioList forKey:kDetailAudioList];
    [aCoder encodeObject:_shortDesc forKey:kDetailShortDesc];
    [aCoder encodeDouble:_extFlag forKey:kDetailExtFlag];
    [aCoder encodeDouble:_aid forKey:kDetailAid];
    [aCoder encodeObject:_authors forKey:kDetailAuthors];
    [aCoder encodeObject:_stripeBottom forKey:kDetailStripeBottom];
    [aCoder encodeObject:_type forKey:kDetailType];
    [aCoder encodeDouble:_cid forKey:kDetailCid];
    [aCoder encodeObject:_cats forKey:kDetailCats];
    [aCoder encodeObject:_guests forKey:kDetailGuests];
    [aCoder encodeObject:_tips forKey:kDetailTips];
    [aCoder encodeDouble:_episodeTotal forKey:kDetailEpisodeTotal];
    [aCoder encodeObject:_actors forKey:kDetailActors];
    [aCoder encodeDouble:_totalComment forKey:kDetailTotalComment];
    [aCoder encodeObject:_imgCover forKey:kDetailImgCover];
    [aCoder encodeObject:_voiceActors forKey:kDetailVoiceActors];
    [aCoder encodeObject:_itemId forKey:kDetailItemId];
    [aCoder encodeObject:_director forKey:kDetailDirector];
    [aCoder encodeObject:_area forKey:kDetailArea];
    [aCoder encodeDouble:_totalFav forKey:kDetailTotalFav];
    [aCoder encodeObject:_characters forKey:kDetailCharacters];
    [aCoder encodeObject:_desc forKey:kDetailDesc];
    [aCoder encodeObject:_channelPic forKey:kDetailChannelPic];
    [aCoder encodeDouble:_subedNum forKey:kDetailSubedNum];
    [aCoder encodeObject:_categories forKey:kDetailCategories];
    [aCoder encodeObject:_itemMediaType forKey:kDetailItemMediaType];
}

- (id)copyWithZone:(NSZone *)zone
{
    Detail *copy = [[Detail alloc] init];
    
    if (copy) {

        copy.totalVv = [self.totalVv copyWithZone:zone];
        copy.title = [self.title copyWithZone:zone];
        copy.showdate = self.showdate;
        copy.completed = self.completed;
        copy.needMoney = self.needMoney;
        copy.formatFlag = self.formatFlag;
        copy.audioList = [self.audioList copyWithZone:zone];
        copy.shortDesc = [self.shortDesc copyWithZone:zone];
        copy.extFlag = self.extFlag;
        copy.aid = self.aid;
        copy.authors = [self.authors copyWithZone:zone];
        copy.stripeBottom = [self.stripeBottom copyWithZone:zone];
        copy.type = [self.type copyWithZone:zone];
        copy.cid = self.cid;
        copy.cats = [self.cats copyWithZone:zone];
        copy.guests = [self.guests copyWithZone:zone];
        copy.tips = [self.tips copyWithZone:zone];
        copy.episodeTotal = self.episodeTotal;
        copy.actors = [self.actors copyWithZone:zone];
        copy.totalComment = self.totalComment;
        copy.imgCover = [self.imgCover copyWithZone:zone];
        copy.voiceActors = [self.voiceActors copyWithZone:zone];
        copy.itemId = [self.itemId copyWithZone:zone];
        copy.director = [self.director copyWithZone:zone];
        copy.area = [self.area copyWithZone:zone];
        copy.totalFav = self.totalFav;
        copy.characters = [self.characters copyWithZone:zone];
        copy.desc = [self.desc copyWithZone:zone];
        copy.channelPic = [self.channelPic copyWithZone:zone];
        copy.subedNum = self.subedNum;
        copy.categories = [self.categories copyWithZone:zone];
        copy.itemMediaType = [self.itemMediaType copyWithZone:zone];
    }
    
    return copy;
}


@end
