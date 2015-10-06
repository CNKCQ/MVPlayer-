//
//  VideoResponce.m
//
//  Created by Jack  on 15/10/5
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "VideoResponce.h"
#import "Detail.h"


NSString *const kVideoResponceStatus = @"status";
NSString *const kVideoResponceDetail = @"detail";
NSString *const kVideoResponceStatusApi = @"status_api";
NSString *const kVideoResponceErrorCodeApi = @"error_code_api";


@interface VideoResponce ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation VideoResponce

@synthesize status = _status;
@synthesize detail = _detail;
@synthesize statusApi = _statusApi;
@synthesize errorCodeApi = _errorCodeApi;


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
            self.status = [self objectOrNilForKey:kVideoResponceStatus fromDictionary:dict];
            self.detail = [Detail modelObjectWithDictionary:[dict objectForKey:kVideoResponceDetail]];
            self.statusApi = [self objectOrNilForKey:kVideoResponceStatusApi fromDictionary:dict];
            self.errorCodeApi = [[self objectOrNilForKey:kVideoResponceErrorCodeApi fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.status forKey:kVideoResponceStatus];
    [mutableDict setValue:[self.detail dictionaryRepresentation] forKey:kVideoResponceDetail];
    [mutableDict setValue:self.statusApi forKey:kVideoResponceStatusApi];
    [mutableDict setValue:[NSNumber numberWithDouble:self.errorCodeApi] forKey:kVideoResponceErrorCodeApi];

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

    self.status = [aDecoder decodeObjectForKey:kVideoResponceStatus];
    self.detail = [aDecoder decodeObjectForKey:kVideoResponceDetail];
    self.statusApi = [aDecoder decodeObjectForKey:kVideoResponceStatusApi];
    self.errorCodeApi = [aDecoder decodeDoubleForKey:kVideoResponceErrorCodeApi];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_status forKey:kVideoResponceStatus];
    [aCoder encodeObject:_detail forKey:kVideoResponceDetail];
    [aCoder encodeObject:_statusApi forKey:kVideoResponceStatusApi];
    [aCoder encodeDouble:_errorCodeApi forKey:kVideoResponceErrorCodeApi];
}

- (id)copyWithZone:(NSZone *)zone
{
    VideoResponce *copy = [[VideoResponce alloc] init];
    
    if (copy) {

        copy.status = [self.status copyWithZone:zone];
        copy.detail = [self.detail copyWithZone:zone];
        copy.statusApi = [self.statusApi copyWithZone:zone];
        copy.errorCodeApi = self.errorCodeApi;
    }
    
    return copy;
}


@end
