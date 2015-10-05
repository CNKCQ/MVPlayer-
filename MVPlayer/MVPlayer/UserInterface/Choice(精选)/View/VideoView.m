//
//  VideoView.m
//  MVPlayer
//
//  Created by Jack on 15/10/5.
//  Copyright © 2015年 Jack. All rights reserved.
//

#import "VideoView.h"
#import "UIImageView+WebCache.h"

@interface VideoView ()

@property (nonatomic, strong)UIImageView *bigImgView;
@property (nonatomic, strong) UILabel *title;
@property (nonatomic, strong) UILabel *shortDesc;

@end

@implementation VideoView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    
    [self layoutUI];
    return self;
}
- (void)layoutUI{
    
    _bigImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 172, 90)];

    [self addSubview:_bigImgView];
  
    _title = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(_bigImgView.frame), 172, 15)];
    _title.font = [UIFont systemFontOfSize:14.f];

    [self addSubview:_title];
    _shortDesc = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(_title.frame), 172, 15)];
    _shortDesc.font = [UIFont systemFontOfSize:13.f];
    [self addSubview:_shortDesc];
}
- (void)loadDataWithModel:(Videos *)videoModel{
    
    [_bigImgView sd_setImageWithURL:[NSURL URLWithString:videoModel.smallImg] placeholderImage:[UIImage imageNamed:@"tudoulogo"]];
    _title.text = videoModel.title;
    _shortDesc.text = videoModel.shortDesc;
    
}
@end
