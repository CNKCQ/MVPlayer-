//
//  Boxes.m
//
//  Created by Jack  on 15/10/4
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "Boxes.h"
#import "Videos.h"


NSString *const kBoxesIpadDisplayType = @"ipad_display_type";
NSString *const kBoxesIndexPageChannelIconForIpad = @"index_page_channel_icon_for_ipad";
NSString *const kBoxesUrlForMoreLink = @"url_for_more_link";
NSString *const kBoxesSubTitle = @"sub_title";
NSString *const kBoxesDisplayType = @"display_type";
NSString *const kBoxesCid = @"cid";
NSString *const kBoxesTitle = @"title";
NSString *const kBoxesIndexPageChannelIcon = @"index_page_channel_icon";
NSString *const kBoxesIsPodcast = @"is_podcast";
NSString *const kBoxesVideoCountForIpadIndexPage = @"video_count_for_ipad_index_page";
NSString *const kBoxesRedirectType = @"redirect_type";
NSString *const kBoxesVideos = @"videos";


@interface Boxes ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Boxes

@synthesize ipadDisplayType = _ipadDisplayType;
@synthesize indexPageChannelIconForIpad = _indexPageChannelIconForIpad;
@synthesize urlForMoreLink = _urlForMoreLink;
@synthesize subTitle = _subTitle;
@synthesize displayType = _displayType;
@synthesize cid = _cid;
@synthesize title = _title;
@synthesize indexPageChannelIcon = _indexPageChannelIcon;
@synthesize isPodcast = _isPodcast;
@synthesize videoCountForIpadIndexPage = _videoCountForIpadIndexPage;
@synthesize redirectType = _redirectType;
@synthesize videos = _videos;


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
            self.ipadDisplayType = [[self objectOrNilForKey:kBoxesIpadDisplayType fromDictionary:dict] doubleValue];
            self.indexPageChannelIconForIpad = [self objectOrNilForKey:kBoxesIndexPageChannelIconForIpad fromDictionary:dict];
            self.urlForMoreLink = [self objectOrNilForKey:kBoxesUrlForMoreLink fromDictionary:dict];
            self.subTitle = [self objectOrNilForKey:kBoxesSubTitle fromDictionary:dict];
            self.displayType = [[self objectOrNilForKey:kBoxesDisplayType fromDictionary:dict] doubleValue];
            self.cid = [self objectOrNilForKey:kBoxesCid fromDictionary:dict];
            self.title = [self objectOrNilForKey:kBoxesTitle fromDictionary:dict];
            self.indexPageChannelIcon = [self objectOrNilForKey:kBoxesIndexPageChannelIcon fromDictionary:dict];
            self.isPodcast = [[self objectOrNilForKey:kBoxesIsPodcast fromDictionary:dict] boolValue];
            self.videoCountForIpadIndexPage = [[self objectOrNilForKey:kBoxesVideoCountForIpadIndexPage fromDictionary:dict] doubleValue];
            self.redirectType = [self objectOrNilForKey:kBoxesRedirectType fromDictionary:dict];
    NSObject *receivedVideos = [dict objectForKey:kBoxesVideos];
    NSMutableArray *parsedVideos = [NSMutableArray array];
    if ([receivedVideos isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedVideos) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedVideos addObject:[Videos modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedVideos isKindOfClass:[NSDictionary class]]) {
       [parsedVideos addObject:[Videos modelObjectWithDictionary:(NSDictionary *)receivedVideos]];
    }

    self.videos = [NSArray arrayWithArray:parsedVideos];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.ipadDisplayType] forKey:kBoxesIpadDisplayType];
    [mutableDict setValue:self.indexPageChannelIconForIpad forKey:kBoxesIndexPageChannelIconForIpad];
    [mutableDict setValue:self.urlForMoreLink forKey:kBoxesUrlForMoreLink];
    [mutableDict setValue:self.subTitle forKey:kBoxesSubTitle];
    [mutableDict setValue:[NSNumber numberWithDouble:self.displayType] forKey:kBoxesDisplayType];
    [mutableDict setValue:self.cid forKey:kBoxesCid];
    [mutableDict setValue:self.title forKey:kBoxesTitle];
    [mutableDict setValue:self.indexPageChannelIcon forKey:kBoxesIndexPageChannelIcon];
    [mutableDict setValue:[NSNumber numberWithBool:self.isPodcast] forKey:kBoxesIsPodcast];
    [mutableDict setValue:[NSNumber numberWithDouble:self.videoCountForIpadIndexPage] forKey:kBoxesVideoCountForIpadIndexPage];
    [mutableDict setValue:self.redirectType forKey:kBoxesRedirectType];
    NSMutableArray *tempArrayForVideos = [NSMutableArray array];
    for (NSObject *subArrayObject in self.videos) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForVideos addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForVideos addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForVideos] forKey:kBoxesVideos];

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

    self.ipadDisplayType = [aDecoder decodeDoubleForKey:kBoxesIpadDisplayType];
    self.indexPageChannelIconForIpad = [aDecoder decodeObjectForKey:kBoxesIndexPageChannelIconForIpad];
    self.urlForMoreLink = [aDecoder decodeObjectForKey:kBoxesUrlForMoreLink];
    self.subTitle = [aDecoder decodeObjectForKey:kBoxesSubTitle];
    self.displayType = [aDecoder decodeDoubleForKey:kBoxesDisplayType];
    self.cid = [aDecoder decodeObjectForKey:kBoxesCid];
    self.title = [aDecoder decodeObjectForKey:kBoxesTitle];
    self.indexPageChannelIcon = [aDecoder decodeObjectForKey:kBoxesIndexPageChannelIcon];
    self.isPodcast = [aDecoder decodeBoolForKey:kBoxesIsPodcast];
    self.videoCountForIpadIndexPage = [aDecoder decodeDoubleForKey:kBoxesVideoCountForIpadIndexPage];
    self.redirectType = [aDecoder decodeObjectForKey:kBoxesRedirectType];
    self.videos = [aDecoder decodeObjectForKey:kBoxesVideos];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_ipadDisplayType forKey:kBoxesIpadDisplayType];
    [aCoder encodeObject:_indexPageChannelIconForIpad forKey:kBoxesIndexPageChannelIconForIpad];
    [aCoder encodeObject:_urlForMoreLink forKey:kBoxesUrlForMoreLink];
    [aCoder encodeObject:_subTitle forKey:kBoxesSubTitle];
    [aCoder encodeDouble:_displayType forKey:kBoxesDisplayType];
    [aCoder encodeObject:_cid forKey:kBoxesCid];
    [aCoder encodeObject:_title forKey:kBoxesTitle];
    [aCoder encodeObject:_indexPageChannelIcon forKey:kBoxesIndexPageChannelIcon];
    [aCoder encodeBool:_isPodcast forKey:kBoxesIsPodcast];
    [aCoder encodeDouble:_videoCountForIpadIndexPage forKey:kBoxesVideoCountForIpadIndexPage];
    [aCoder encodeObject:_redirectType forKey:kBoxesRedirectType];
    [aCoder encodeObject:_videos forKey:kBoxesVideos];
}

- (id)copyWithZone:(NSZone *)zone
{
    Boxes *copy = [[Boxes alloc] init];
    
    if (copy) {

        copy.ipadDisplayType = self.ipadDisplayType;
        copy.indexPageChannelIconForIpad = [self.indexPageChannelIconForIpad copyWithZone:zone];
        copy.urlForMoreLink = [self.urlForMoreLink copyWithZone:zone];
        copy.subTitle = [self.subTitle copyWithZone:zone];
        copy.displayType = self.displayType;
        copy.cid = [self.cid copyWithZone:zone];
        copy.title = [self.title copyWithZone:zone];
        copy.indexPageChannelIcon = [self.indexPageChannelIcon copyWithZone:zone];
        copy.isPodcast = self.isPodcast;
        copy.videoCountForIpadIndexPage = self.videoCountForIpadIndexPage;
        copy.redirectType = [self.redirectType copyWithZone:zone];
        copy.videos = [self.videos copyWithZone:zone];
    }
    
    return copy;
}


@end
