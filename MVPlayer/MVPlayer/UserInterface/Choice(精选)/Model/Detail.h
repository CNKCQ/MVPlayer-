//
//  Detail.h
//
//  Created by Jack  on 15/10/5
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Detail : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *totalVv;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, assign) double showdate;
@property (nonatomic, assign) double completed;
@property (nonatomic, assign) double needMoney;
@property (nonatomic, assign) double formatFlag;
@property (nonatomic, strong) NSArray *audioList;
@property (nonatomic, strong) NSString *shortDesc;
@property (nonatomic, assign) double extFlag;
@property (nonatomic, assign) double aid;
@property (nonatomic, strong) NSArray *authors;
@property (nonatomic, strong) NSString *stripeBottom;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, assign) double cid;
@property (nonatomic, strong) NSString *cats;
@property (nonatomic, strong) NSArray *guests;
@property (nonatomic, strong) NSString *tips;
@property (nonatomic, assign) double episodeTotal;
@property (nonatomic, strong) NSArray *actors;
@property (nonatomic, assign) double totalComment;
@property (nonatomic, strong) NSString *imgCover;
@property (nonatomic, strong) NSArray *voiceActors;
@property (nonatomic, strong) NSString *itemId;
@property (nonatomic, strong) NSArray *director;
@property (nonatomic, strong) NSString *area;
@property (nonatomic, assign) double totalFav;
@property (nonatomic, strong) NSArray *characters;
@property (nonatomic, strong) NSString *desc;
@property (nonatomic, strong) NSString *channelPic;
@property (nonatomic, assign) double subedNum;
@property (nonatomic, strong) NSArray *categories;
@property (nonatomic, strong) NSString *itemMediaType;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
