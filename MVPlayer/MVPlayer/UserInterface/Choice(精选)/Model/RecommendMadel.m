//
//  RecommendMadel.m
//
//  Created by Jack  on 15/10/6
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "RecommendMadel.h"
#import "ReqInfo.h"
#import "Results.h"


NSString *const kRecommendMadelStatus = @"status";
NSString *const kRecommendMadelErrorCodeApi = @"error_code_api";
NSString *const kRecommendMadelPcode = @"pcode";
NSString *const kRecommendMadelReqInfo = @"reqInfo";
NSString *const kRecommendMadelCacheKeyName = @"cache.key.name";
NSString *const kRecommendMadelResults = @"results";
NSString *const kRecommendMadelTotal = @"total";
NSString *const kRecommendMadelType = @"type";
NSString *const kRecommendMadelApiExpiredAt = @"api.expired_at";
NSString *const kRecommendMadelStatusApi = @"status_api";


@interface RecommendMadel ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation RecommendMadel

@synthesize status = _status;
@synthesize errorCodeApi = _errorCodeApi;
@synthesize pcode = _pcode;
@synthesize reqInfo = _reqInfo;
@synthesize cacheKeyName = _cacheKeyName;
@synthesize results = _results;
@synthesize total = _total;
@synthesize type = _type;
@synthesize apiExpiredAt = _apiExpiredAt;
@synthesize statusApi = _statusApi;


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
            self.status = [self objectOrNilForKey:kRecommendMadelStatus fromDictionary:dict];
            self.errorCodeApi = [[self objectOrNilForKey:kRecommendMadelErrorCodeApi fromDictionary:dict] doubleValue];
            self.pcode = [[self objectOrNilForKey:kRecommendMadelPcode fromDictionary:dict] doubleValue];
            self.reqInfo = [ReqInfo modelObjectWithDictionary:[dict objectForKey:kRecommendMadelReqInfo]];
            self.cacheKeyName = [self objectOrNilForKey:kRecommendMadelCacheKeyName fromDictionary:dict];
    NSObject *receivedResults = [dict objectForKey:kRecommendMadelResults];
    NSMutableArray *parsedResults = [NSMutableArray array];
    if ([receivedResults isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedResults) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedResults addObject:[Results modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedResults isKindOfClass:[NSDictionary class]]) {
       [parsedResults addObject:[Results modelObjectWithDictionary:(NSDictionary *)receivedResults]];
    }

    self.results = [NSArray arrayWithArray:parsedResults];
            self.total = [[self objectOrNilForKey:kRecommendMadelTotal fromDictionary:dict] doubleValue];
            self.type = [self objectOrNilForKey:kRecommendMadelType fromDictionary:dict];
            self.apiExpiredAt = [[self objectOrNilForKey:kRecommendMadelApiExpiredAt fromDictionary:dict] doubleValue];
            self.statusApi = [self objectOrNilForKey:kRecommendMadelStatusApi fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.status forKey:kRecommendMadelStatus];
    [mutableDict setValue:[NSNumber numberWithDouble:self.errorCodeApi] forKey:kRecommendMadelErrorCodeApi];
    [mutableDict setValue:[NSNumber numberWithDouble:self.pcode] forKey:kRecommendMadelPcode];
    [mutableDict setValue:[self.reqInfo dictionaryRepresentation] forKey:kRecommendMadelReqInfo];
    [mutableDict setValue:self.cacheKeyName forKey:kRecommendMadelCacheKeyName];
    NSMutableArray *tempArrayForResults = [NSMutableArray array];
    for (NSObject *subArrayObject in self.results) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForResults addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForResults addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForResults] forKey:kRecommendMadelResults];
    [mutableDict setValue:[NSNumber numberWithDouble:self.total] forKey:kRecommendMadelTotal];
    [mutableDict setValue:self.type forKey:kRecommendMadelType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.apiExpiredAt] forKey:kRecommendMadelApiExpiredAt];
    [mutableDict setValue:self.statusApi forKey:kRecommendMadelStatusApi];

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

    self.status = [aDecoder decodeObjectForKey:kRecommendMadelStatus];
    self.errorCodeApi = [aDecoder decodeDoubleForKey:kRecommendMadelErrorCodeApi];
    self.pcode = [aDecoder decodeDoubleForKey:kRecommendMadelPcode];
    self.reqInfo = [aDecoder decodeObjectForKey:kRecommendMadelReqInfo];
    self.cacheKeyName = [aDecoder decodeObjectForKey:kRecommendMadelCacheKeyName];
    self.results = [aDecoder decodeObjectForKey:kRecommendMadelResults];
    self.total = [aDecoder decodeDoubleForKey:kRecommendMadelTotal];
    self.type = [aDecoder decodeObjectForKey:kRecommendMadelType];
    self.apiExpiredAt = [aDecoder decodeDoubleForKey:kRecommendMadelApiExpiredAt];
    self.statusApi = [aDecoder decodeObjectForKey:kRecommendMadelStatusApi];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_status forKey:kRecommendMadelStatus];
    [aCoder encodeDouble:_errorCodeApi forKey:kRecommendMadelErrorCodeApi];
    [aCoder encodeDouble:_pcode forKey:kRecommendMadelPcode];
    [aCoder encodeObject:_reqInfo forKey:kRecommendMadelReqInfo];
    [aCoder encodeObject:_cacheKeyName forKey:kRecommendMadelCacheKeyName];
    [aCoder encodeObject:_results forKey:kRecommendMadelResults];
    [aCoder encodeDouble:_total forKey:kRecommendMadelTotal];
    [aCoder encodeObject:_type forKey:kRecommendMadelType];
    [aCoder encodeDouble:_apiExpiredAt forKey:kRecommendMadelApiExpiredAt];
    [aCoder encodeObject:_statusApi forKey:kRecommendMadelStatusApi];
}

- (id)copyWithZone:(NSZone *)zone
{
    RecommendMadel *copy = [[RecommendMadel alloc] init];
    
    if (copy) {

        copy.status = [self.status copyWithZone:zone];
        copy.errorCodeApi = self.errorCodeApi;
        copy.pcode = self.pcode;
        copy.reqInfo = [self.reqInfo copyWithZone:zone];
        copy.cacheKeyName = [self.cacheKeyName copyWithZone:zone];
        copy.results = [self.results copyWithZone:zone];
        copy.total = self.total;
        copy.type = [self.type copyWithZone:zone];
        copy.apiExpiredAt = self.apiExpiredAt;
        copy.statusApi = [self.statusApi copyWithZone:zone];
    }
    
    return copy;
}


@end
