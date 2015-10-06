//
//  ReqInfo.m
//
//  Created by Jack  on 15/10/6
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "ReqInfo.h"


NSString *const kReqInfoUserid = @"userid";
NSString *const kReqInfoYjuid = @"yjuid";
NSString *const kReqInfoApt = @"apt";
NSString *const kReqInfoReqId = @"req_id";
NSString *const kReqInfoPg = @"pg";
NSString *const kReqInfoOrd = @"ord";
NSString *const kReqInfoAbver = @"abver";
NSString *const kReqInfoMd = @"md";
NSString *const kReqInfoRequestType = @"request_type";
NSString *const kReqInfoJuid = @"juid";


@interface ReqInfo ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ReqInfo

@synthesize userid = _userid;
@synthesize yjuid = _yjuid;
@synthesize apt = _apt;
@synthesize reqId = _reqId;
@synthesize pg = _pg;
@synthesize ord = _ord;
@synthesize abver = _abver;
@synthesize md = _md;
@synthesize requestType = _requestType;
@synthesize juid = _juid;


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
            self.userid = [self objectOrNilForKey:kReqInfoUserid fromDictionary:dict];
            self.yjuid = [self objectOrNilForKey:kReqInfoYjuid fromDictionary:dict];
            self.apt = [self objectOrNilForKey:kReqInfoApt fromDictionary:dict];
            self.reqId = [self objectOrNilForKey:kReqInfoReqId fromDictionary:dict];
            self.pg = [self objectOrNilForKey:kReqInfoPg fromDictionary:dict];
            self.ord = [self objectOrNilForKey:kReqInfoOrd fromDictionary:dict];
            self.abver = [self objectOrNilForKey:kReqInfoAbver fromDictionary:dict];
            self.md = [self objectOrNilForKey:kReqInfoMd fromDictionary:dict];
            self.requestType = [self objectOrNilForKey:kReqInfoRequestType fromDictionary:dict];
            self.juid = [self objectOrNilForKey:kReqInfoJuid fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.userid forKey:kReqInfoUserid];
    [mutableDict setValue:self.yjuid forKey:kReqInfoYjuid];
    [mutableDict setValue:self.apt forKey:kReqInfoApt];
    [mutableDict setValue:self.reqId forKey:kReqInfoReqId];
    [mutableDict setValue:self.pg forKey:kReqInfoPg];
    [mutableDict setValue:self.ord forKey:kReqInfoOrd];
    [mutableDict setValue:self.abver forKey:kReqInfoAbver];
    [mutableDict setValue:self.md forKey:kReqInfoMd];
    [mutableDict setValue:self.requestType forKey:kReqInfoRequestType];
    [mutableDict setValue:self.juid forKey:kReqInfoJuid];

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

    self.userid = [aDecoder decodeObjectForKey:kReqInfoUserid];
    self.yjuid = [aDecoder decodeObjectForKey:kReqInfoYjuid];
    self.apt = [aDecoder decodeObjectForKey:kReqInfoApt];
    self.reqId = [aDecoder decodeObjectForKey:kReqInfoReqId];
    self.pg = [aDecoder decodeObjectForKey:kReqInfoPg];
    self.ord = [aDecoder decodeObjectForKey:kReqInfoOrd];
    self.abver = [aDecoder decodeObjectForKey:kReqInfoAbver];
    self.md = [aDecoder decodeObjectForKey:kReqInfoMd];
    self.requestType = [aDecoder decodeObjectForKey:kReqInfoRequestType];
    self.juid = [aDecoder decodeObjectForKey:kReqInfoJuid];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_userid forKey:kReqInfoUserid];
    [aCoder encodeObject:_yjuid forKey:kReqInfoYjuid];
    [aCoder encodeObject:_apt forKey:kReqInfoApt];
    [aCoder encodeObject:_reqId forKey:kReqInfoReqId];
    [aCoder encodeObject:_pg forKey:kReqInfoPg];
    [aCoder encodeObject:_ord forKey:kReqInfoOrd];
    [aCoder encodeObject:_abver forKey:kReqInfoAbver];
    [aCoder encodeObject:_md forKey:kReqInfoMd];
    [aCoder encodeObject:_requestType forKey:kReqInfoRequestType];
    [aCoder encodeObject:_juid forKey:kReqInfoJuid];
}

- (id)copyWithZone:(NSZone *)zone
{
    ReqInfo *copy = [[ReqInfo alloc] init];
    
    if (copy) {

        copy.userid = [self.userid copyWithZone:zone];
        copy.yjuid = [self.yjuid copyWithZone:zone];
        copy.apt = [self.apt copyWithZone:zone];
        copy.reqId = [self.reqId copyWithZone:zone];
        copy.pg = [self.pg copyWithZone:zone];
        copy.ord = [self.ord copyWithZone:zone];
        copy.abver = [self.abver copyWithZone:zone];
        copy.md = [self.md copyWithZone:zone];
        copy.requestType = [self.requestType copyWithZone:zone];
        copy.juid = [self.juid copyWithZone:zone];
    }
    
    return copy;
}


@end
