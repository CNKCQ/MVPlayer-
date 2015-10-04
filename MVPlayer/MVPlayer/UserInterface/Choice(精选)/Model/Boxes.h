//
//  Boxes.h
//
//  Created by Jack  on 15/10/4
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Boxes : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) double ipadDisplayType;
@property (nonatomic, strong) NSString *indexPageChannelIconForIpad;
@property (nonatomic, strong) NSString *urlForMoreLink;
@property (nonatomic, strong) NSString *subTitle;
@property (nonatomic, assign) double displayType;
@property (nonatomic, strong) NSString *cid;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *indexPageChannelIcon;
@property (nonatomic, assign) BOOL isPodcast;
@property (nonatomic, assign) double videoCountForIpadIndexPage;
@property (nonatomic, strong) NSString *redirectType;
@property (nonatomic, strong) NSArray *videos;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
