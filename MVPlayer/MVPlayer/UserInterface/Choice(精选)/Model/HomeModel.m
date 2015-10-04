//
//  HomeModel.m
//
//  Created by Jack  on 15/10/4
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "HomeModel.h"
#import "Boxes.h"
#import "Banner.h"


NSString *const kHomeModelErrorCodeApi = @"error_code_api";
NSString *const kHomeModelBoxes = @"boxes";
NSString *const kHomeModelIndexChannelContentVersion = @"index_channel_content_version";
NSString *const kHomeModelSearchDefaultWordForIpad = @"search_default_word_for_ipad";
NSString *const kHomeModelStatusApi = @"status_api";
NSString *const kHomeModelBanner = @"banner";


@interface HomeModel ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation HomeModel

@synthesize errorCodeApi = _errorCodeApi;
@synthesize boxes = _boxes;
@synthesize indexChannelContentVersion = _indexChannelContentVersion;
@synthesize searchDefaultWordForIpad = _searchDefaultWordForIpad;
@synthesize statusApi = _statusApi;
@synthesize banner = _banner;


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
            self.errorCodeApi = [[self objectOrNilForKey:kHomeModelErrorCodeApi fromDictionary:dict] doubleValue];
    NSObject *receivedBoxes = [dict objectForKey:kHomeModelBoxes];
    NSMutableArray *parsedBoxes = [NSMutableArray array];
    if ([receivedBoxes isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedBoxes) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedBoxes addObject:[Boxes modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedBoxes isKindOfClass:[NSDictionary class]]) {
       [parsedBoxes addObject:[Boxes modelObjectWithDictionary:(NSDictionary *)receivedBoxes]];
    }

    self.boxes = [NSArray arrayWithArray:parsedBoxes];
            self.indexChannelContentVersion = [self objectOrNilForKey:kHomeModelIndexChannelContentVersion fromDictionary:dict];
            self.searchDefaultWordForIpad = [self objectOrNilForKey:kHomeModelSearchDefaultWordForIpad fromDictionary:dict];
            self.statusApi = [self objectOrNilForKey:kHomeModelStatusApi fromDictionary:dict];
    NSObject *receivedBanner = [dict objectForKey:kHomeModelBanner];
    NSMutableArray *parsedBanner = [NSMutableArray array];
    if ([receivedBanner isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedBanner) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedBanner addObject:[Banner modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedBanner isKindOfClass:[NSDictionary class]]) {
       [parsedBanner addObject:[Banner modelObjectWithDictionary:(NSDictionary *)receivedBanner]];
    }

    self.banner = [NSArray arrayWithArray:parsedBanner];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.errorCodeApi] forKey:kHomeModelErrorCodeApi];
    NSMutableArray *tempArrayForBoxes = [NSMutableArray array];
    for (NSObject *subArrayObject in self.boxes) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForBoxes addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForBoxes addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForBoxes] forKey:kHomeModelBoxes];
    [mutableDict setValue:self.indexChannelContentVersion forKey:kHomeModelIndexChannelContentVersion];
    [mutableDict setValue:self.searchDefaultWordForIpad forKey:kHomeModelSearchDefaultWordForIpad];
    [mutableDict setValue:self.statusApi forKey:kHomeModelStatusApi];
    NSMutableArray *tempArrayForBanner = [NSMutableArray array];
    for (NSObject *subArrayObject in self.banner) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForBanner addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForBanner addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForBanner] forKey:kHomeModelBanner];

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

    self.errorCodeApi = [aDecoder decodeDoubleForKey:kHomeModelErrorCodeApi];
    self.boxes = [aDecoder decodeObjectForKey:kHomeModelBoxes];
    self.indexChannelContentVersion = [aDecoder decodeObjectForKey:kHomeModelIndexChannelContentVersion];
    self.searchDefaultWordForIpad = [aDecoder decodeObjectForKey:kHomeModelSearchDefaultWordForIpad];
    self.statusApi = [aDecoder decodeObjectForKey:kHomeModelStatusApi];
    self.banner = [aDecoder decodeObjectForKey:kHomeModelBanner];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_errorCodeApi forKey:kHomeModelErrorCodeApi];
    [aCoder encodeObject:_boxes forKey:kHomeModelBoxes];
    [aCoder encodeObject:_indexChannelContentVersion forKey:kHomeModelIndexChannelContentVersion];
    [aCoder encodeObject:_searchDefaultWordForIpad forKey:kHomeModelSearchDefaultWordForIpad];
    [aCoder encodeObject:_statusApi forKey:kHomeModelStatusApi];
    [aCoder encodeObject:_banner forKey:kHomeModelBanner];
}

- (id)copyWithZone:(NSZone *)zone
{
    HomeModel *copy = [[HomeModel alloc] init];
    
    if (copy) {

        copy.errorCodeApi = self.errorCodeApi;
        copy.boxes = [self.boxes copyWithZone:zone];
        copy.indexChannelContentVersion = [self.indexChannelContentVersion copyWithZone:zone];
        copy.searchDefaultWordForIpad = [self.searchDefaultWordForIpad copyWithZone:zone];
        copy.statusApi = [self.statusApi copyWithZone:zone];
        copy.banner = [self.banner copyWithZone:zone];
    }
    
    return copy;
}


@end
