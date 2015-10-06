//
//  Results.m
//
//  Created by Jack  on 15/10/6
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "Results.h"


NSString *const kResultsUserid = @"userid";
NSString *const kResultsTotalDown = @"total_down";
NSString *const kResultsTitle = @"title";
NSString *const kResultsLimit = @"limit";
NSString *const kResultsPv = @"pv";
NSString *const kResultsTags = @"tags";
NSString *const kResultsDuration = @"duration";
NSString *const kResultsImg = @"img";
NSString *const kResultsItemCode = @"itemCode";
NSString *const kResultsTotalPv = @"total_pv";
NSString *const kResultsReputation = @"reputation";
NSString *const kResultsTotalUp = @"total_up";
NSString *const kResultsStripeBottom = @"stripe_bottom";
NSString *const kResultsState = @"state";
NSString *const kResultsCats = @"cats";
NSString *const kResultsPubdate = @"pubdate";
NSString *const kResultsTotalComment = @"total_comment";
NSString *const kResultsPvPr = @"pv_pr";
NSString *const kResultsTotalFav = @"total_fav";
NSString *const kResultsImg169 = @"img_16_9";
NSString *const kResultsDesc = @"desc";
NSString *const kResultsImgHd = @"img_hd";
NSString *const kResultsUsername = @"username";


@interface Results ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Results

@synthesize userid = _userid;
@synthesize totalDown = _totalDown;
@synthesize title = _title;
@synthesize limit = _limit;
@synthesize pv = _pv;
@synthesize tags = _tags;
@synthesize duration = _duration;
@synthesize img = _img;
@synthesize itemCode = _itemCode;
@synthesize totalPv = _totalPv;
@synthesize reputation = _reputation;
@synthesize totalUp = _totalUp;
@synthesize stripeBottom = _stripeBottom;
@synthesize state = _state;
@synthesize cats = _cats;
@synthesize pubdate = _pubdate;
@synthesize totalComment = _totalComment;
@synthesize pvPr = _pvPr;
@synthesize totalFav = _totalFav;
@synthesize img169 = _img169;
@synthesize desc = _desc;
@synthesize imgHd = _imgHd;
@synthesize username = _username;


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
            self.userid = [self objectOrNilForKey:kResultsUserid fromDictionary:dict];
            self.totalDown = [self objectOrNilForKey:kResultsTotalDown fromDictionary:dict];
            self.title = [self objectOrNilForKey:kResultsTitle fromDictionary:dict];
            self.limit = [self objectOrNilForKey:kResultsLimit fromDictionary:dict];
            self.pv = [self objectOrNilForKey:kResultsPv fromDictionary:dict];
            self.tags = [self objectOrNilForKey:kResultsTags fromDictionary:dict];
            self.duration = [[self objectOrNilForKey:kResultsDuration fromDictionary:dict] doubleValue];
            self.img = [self objectOrNilForKey:kResultsImg fromDictionary:dict];
            self.itemCode = [self objectOrNilForKey:kResultsItemCode fromDictionary:dict];
            self.totalPv = [[self objectOrNilForKey:kResultsTotalPv fromDictionary:dict] doubleValue];
            self.reputation = [self objectOrNilForKey:kResultsReputation fromDictionary:dict];
            self.totalUp = [self objectOrNilForKey:kResultsTotalUp fromDictionary:dict];
            self.stripeBottom = [self objectOrNilForKey:kResultsStripeBottom fromDictionary:dict];
            self.state = [self objectOrNilForKey:kResultsState fromDictionary:dict];
            self.cats = [self objectOrNilForKey:kResultsCats fromDictionary:dict];
            self.pubdate = [self objectOrNilForKey:kResultsPubdate fromDictionary:dict];
            self.totalComment = [[self objectOrNilForKey:kResultsTotalComment fromDictionary:dict] doubleValue];
            self.pvPr = [self objectOrNilForKey:kResultsPvPr fromDictionary:dict];
            self.totalFav = [[self objectOrNilForKey:kResultsTotalFav fromDictionary:dict] doubleValue];
            self.img169 = [self objectOrNilForKey:kResultsImg169 fromDictionary:dict];
            self.desc = [self objectOrNilForKey:kResultsDesc fromDictionary:dict];
            self.imgHd = [self objectOrNilForKey:kResultsImgHd fromDictionary:dict];
            self.username = [self objectOrNilForKey:kResultsUsername fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.userid forKey:kResultsUserid];
    [mutableDict setValue:self.totalDown forKey:kResultsTotalDown];
    [mutableDict setValue:self.title forKey:kResultsTitle];
    [mutableDict setValue:self.limit forKey:kResultsLimit];
    [mutableDict setValue:self.pv forKey:kResultsPv];
    [mutableDict setValue:self.tags forKey:kResultsTags];
    [mutableDict setValue:[NSNumber numberWithDouble:self.duration] forKey:kResultsDuration];
    [mutableDict setValue:self.img forKey:kResultsImg];
    [mutableDict setValue:self.itemCode forKey:kResultsItemCode];
    [mutableDict setValue:[NSNumber numberWithDouble:self.totalPv] forKey:kResultsTotalPv];
    [mutableDict setValue:self.reputation forKey:kResultsReputation];
    [mutableDict setValue:self.totalUp forKey:kResultsTotalUp];
    [mutableDict setValue:self.stripeBottom forKey:kResultsStripeBottom];
    [mutableDict setValue:self.state forKey:kResultsState];
    [mutableDict setValue:self.cats forKey:kResultsCats];
    [mutableDict setValue:self.pubdate forKey:kResultsPubdate];
    [mutableDict setValue:[NSNumber numberWithDouble:self.totalComment] forKey:kResultsTotalComment];
    [mutableDict setValue:self.pvPr forKey:kResultsPvPr];
    [mutableDict setValue:[NSNumber numberWithDouble:self.totalFav] forKey:kResultsTotalFav];
    [mutableDict setValue:self.img169 forKey:kResultsImg169];
    [mutableDict setValue:self.desc forKey:kResultsDesc];
    [mutableDict setValue:self.imgHd forKey:kResultsImgHd];
    [mutableDict setValue:self.username forKey:kResultsUsername];

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

    self.userid = [aDecoder decodeObjectForKey:kResultsUserid];
    self.totalDown = [aDecoder decodeObjectForKey:kResultsTotalDown];
    self.title = [aDecoder decodeObjectForKey:kResultsTitle];
    self.limit = [aDecoder decodeObjectForKey:kResultsLimit];
    self.pv = [aDecoder decodeObjectForKey:kResultsPv];
    self.tags = [aDecoder decodeObjectForKey:kResultsTags];
    self.duration = [aDecoder decodeDoubleForKey:kResultsDuration];
    self.img = [aDecoder decodeObjectForKey:kResultsImg];
    self.itemCode = [aDecoder decodeObjectForKey:kResultsItemCode];
    self.totalPv = [aDecoder decodeDoubleForKey:kResultsTotalPv];
    self.reputation = [aDecoder decodeObjectForKey:kResultsReputation];
    self.totalUp = [aDecoder decodeObjectForKey:kResultsTotalUp];
    self.stripeBottom = [aDecoder decodeObjectForKey:kResultsStripeBottom];
    self.state = [aDecoder decodeObjectForKey:kResultsState];
    self.cats = [aDecoder decodeObjectForKey:kResultsCats];
    self.pubdate = [aDecoder decodeObjectForKey:kResultsPubdate];
    self.totalComment = [aDecoder decodeDoubleForKey:kResultsTotalComment];
    self.pvPr = [aDecoder decodeObjectForKey:kResultsPvPr];
    self.totalFav = [aDecoder decodeDoubleForKey:kResultsTotalFav];
    self.img169 = [aDecoder decodeObjectForKey:kResultsImg169];
    self.desc = [aDecoder decodeObjectForKey:kResultsDesc];
    self.imgHd = [aDecoder decodeObjectForKey:kResultsImgHd];
    self.username = [aDecoder decodeObjectForKey:kResultsUsername];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_userid forKey:kResultsUserid];
    [aCoder encodeObject:_totalDown forKey:kResultsTotalDown];
    [aCoder encodeObject:_title forKey:kResultsTitle];
    [aCoder encodeObject:_limit forKey:kResultsLimit];
    [aCoder encodeObject:_pv forKey:kResultsPv];
    [aCoder encodeObject:_tags forKey:kResultsTags];
    [aCoder encodeDouble:_duration forKey:kResultsDuration];
    [aCoder encodeObject:_img forKey:kResultsImg];
    [aCoder encodeObject:_itemCode forKey:kResultsItemCode];
    [aCoder encodeDouble:_totalPv forKey:kResultsTotalPv];
    [aCoder encodeObject:_reputation forKey:kResultsReputation];
    [aCoder encodeObject:_totalUp forKey:kResultsTotalUp];
    [aCoder encodeObject:_stripeBottom forKey:kResultsStripeBottom];
    [aCoder encodeObject:_state forKey:kResultsState];
    [aCoder encodeObject:_cats forKey:kResultsCats];
    [aCoder encodeObject:_pubdate forKey:kResultsPubdate];
    [aCoder encodeDouble:_totalComment forKey:kResultsTotalComment];
    [aCoder encodeObject:_pvPr forKey:kResultsPvPr];
    [aCoder encodeDouble:_totalFav forKey:kResultsTotalFav];
    [aCoder encodeObject:_img169 forKey:kResultsImg169];
    [aCoder encodeObject:_desc forKey:kResultsDesc];
    [aCoder encodeObject:_imgHd forKey:kResultsImgHd];
    [aCoder encodeObject:_username forKey:kResultsUsername];
}

- (id)copyWithZone:(NSZone *)zone
{
    Results *copy = [[Results alloc] init];
    
    if (copy) {

        copy.userid = [self.userid copyWithZone:zone];
        copy.totalDown = [self.totalDown copyWithZone:zone];
        copy.title = [self.title copyWithZone:zone];
        copy.limit = [self.limit copyWithZone:zone];
        copy.pv = [self.pv copyWithZone:zone];
        copy.tags = [self.tags copyWithZone:zone];
        copy.duration = self.duration;
        copy.img = [self.img copyWithZone:zone];
        copy.itemCode = [self.itemCode copyWithZone:zone];
        copy.totalPv = self.totalPv;
        copy.reputation = [self.reputation copyWithZone:zone];
        copy.totalUp = [self.totalUp copyWithZone:zone];
        copy.stripeBottom = [self.stripeBottom copyWithZone:zone];
        copy.state = [self.state copyWithZone:zone];
        copy.cats = [self.cats copyWithZone:zone];
        copy.pubdate = [self.pubdate copyWithZone:zone];
        copy.totalComment = self.totalComment;
        copy.pvPr = [self.pvPr copyWithZone:zone];
        copy.totalFav = self.totalFav;
        copy.img169 = [self.img169 copyWithZone:zone];
        copy.desc = [self.desc copyWithZone:zone];
        copy.imgHd = [self.imgHd copyWithZone:zone];
        copy.username = [self.username copyWithZone:zone];
    }
    
    return copy;
}


@end
