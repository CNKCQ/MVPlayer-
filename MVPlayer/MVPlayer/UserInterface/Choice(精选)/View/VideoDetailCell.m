//
//  VideoDetailCell.m
//  MVPlayer
//
//  Created by Jack on 15/10/6.
//  Copyright © 2015年 Jack. All rights reserved.
//

#define PADDING 10
#import "VideoDetailCell.h"
#import "Detail.h"
#import "UIImageView+WebCache.h"

@interface VideoDetailCell ()

@property (nonatomic, strong)UIImageView *samllImageView;

@property (nonatomic, strong)UILabel *titleLabel;

@property (nonatomic, strong)UILabel *subtitleLabel;

@end

@implementation VideoDetailCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifie{
    
    self = [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifie];
    
    [self loadUI];
    
    return self;
}

- (void)loadUI{
    
    _samllImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, PADDING * 0.5, 120, 80 - PADDING)];
    
    [self addSubview:_samllImageView];
    
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(_samllImageView.frame) + PADDING, 0, WIDTH - 100, 35)];
    _titleLabel.font = [UIFont systemFontOfSize:14.f];
    [self addSubview:_titleLabel];
    
    _subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMinX(_titleLabel.frame), CGRectGetMaxY(_titleLabel.frame), 200, 35)];
    _subtitleLabel.font = [UIFont systemFontOfSize:13.f];
    _subtitleLabel.numberOfLines = 0;
    [self addSubview:_subtitleLabel];
    
}

- (void)loadDataWithDetailModel:(Results *)listModel{
    
    [_samllImageView sd_setImageWithURL:[NSURL URLWithString:listModel.img]];
    
    _titleLabel.text = listModel.title;
    
    _subtitleLabel.text = listModel.desc;
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

  
}

@end
