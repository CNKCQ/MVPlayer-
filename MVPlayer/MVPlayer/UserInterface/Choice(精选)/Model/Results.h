//
//  Results.h
//
//  Created by Jack  on 15/10/6
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Results : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *userid;
@property (nonatomic, strong) NSString *totalDown;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *limit;
@property (nonatomic, strong) NSString *pv;
@property (nonatomic, strong) NSString *tags;
@property (nonatomic, assign) double duration;
@property (nonatomic, strong) NSString *img;
@property (nonatomic, strong) NSString *itemCode;
@property (nonatomic, assign) double totalPv;
@property (nonatomic, strong) NSString *reputation;
@property (nonatomic, strong) NSString *totalUp;
@property (nonatomic, strong) NSString *stripeBottom;
@property (nonatomic, strong) NSString *state;
@property (nonatomic, strong) NSString *cats;
@property (nonatomic, strong) NSString *pubdate;
@property (nonatomic, assign) double totalComment;
@property (nonatomic, strong) NSString *pvPr;
@property (nonatomic, assign) double totalFav;
@property (nonatomic, strong) NSString *img169;
@property (nonatomic, strong) NSString *desc;
@property (nonatomic, strong) NSString *imgHd;
@property (nonatomic, strong) NSString *username;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
