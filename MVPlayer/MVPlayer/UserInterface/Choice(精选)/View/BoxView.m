//
//  BoxView.m
//  MVPlayer
//
//  Created by Jack on 15/10/5.
//  Copyright © 2015年 Jack. All rights reserved.
//

#define PADDING 10
#import "BoxView.h"
#import "UIImageView+WebCache.h"

@interface BoxView ()

@property (nonatomic,strong) UIImageView *logoImageView;
@property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *subtitleLabel;

@end

@implementation BoxView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    [self loadUI];
    return self;
}

- (void)loadUI{
    UIView *bigLineView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, 6)];
    bigLineView.backgroundColor = [UIColor orangeColor];
    [self addSubview:bigLineView];
    _logoImageView = [[UIImageView alloc] initWithFrame:CGRectMake(PADDING * 0.5, CGRectGetMaxY(bigLineView.frame) + PADDING-2, 40, 40)];
    [self addSubview:_logoImageView];
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(_logoImageView.frame) + PADDING, CGRectGetMinY(_logoImageView.frame), 120, 35)];
    [self addSubview:_titleLabel];
    _subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(_titleLabel.frame), CGRectGetMinY(_logoImageView.frame), WIDTH - CGRectGetMaxX(_titleLabel.frame), 35)];
    [self addSubview:_subtitleLabel];
    
    UIView *lineView = [[UIView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(_logoImageView.frame) + PADDING * 0.5, WIDTH, 1)];
    lineView.backgroundColor = [UIColor orangeColor];
    [self addSubview:lineView];
    
    
    
}

- (void)loadDataWithModel:(Boxes *)boxModel{
    
    [_logoImageView sd_setImageWithURL:[NSURL URLWithString:boxModel.indexPageChannelIcon]];
    _titleLabel.text = boxModel.title;
    
    _subtitleLabel.text = boxModel.subTitle;
}

@end
