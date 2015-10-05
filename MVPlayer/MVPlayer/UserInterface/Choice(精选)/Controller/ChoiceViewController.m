//
//  ChoiceViewController.m
//  MVPlayer
//
//  Created by Jack on 15/10/2.
//  Copyright © 2015年 Jack. All rights reserved.
//


#define BOXCELL_ID @"box"
#define BOXCELL_TITLE_ID @"box_title"

#import "ChoiceViewController.h"
#import "SDCycleScrollView.h"
#import "HomeModel.h"
#import "Banner.h"
#import "Boxes.h"
#import "BoxView.h"
#import "Videos.h"
#import "VideoView.h"
#import "UIImageView+WebCache.h"
/**
 *  精选
 */
@interface ChoiceViewController ()<SDCycleScrollViewDelegate,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>{
    SDCycleScrollView *cycleScrollView;
   
}

@property (nonatomic, strong) HomeModel *homeModel;
@property (nonatomic, strong)  UICollectionView *collectionView;

@end

@implementation ChoiceViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    /**设置状态栏为白色*/
    self.navigationController.navigationBar.barStyle = UIStatusBarStyleLightContent;
    self.homeModel = [[HomeModel alloc] init];
    [self loadData];

    [self layoutUI];
}
- (void)layoutUI{

    SDCycleScrollView *cycleScrollView2 = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, WIDTH, 0) imageURLStringsGroup:nil];
    [self.view addSubview:cycleScrollView2];
    cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 64, WIDTH, 180) imageURLStringsGroup:nil];
    cycleScrollView.backgroundColor = [UIColor orangeColor];
    cycleScrollView.pageControlAliment = SDCycleScrollViewPageContolAlimentRight;
    cycleScrollView.delegate = self;
    cycleScrollView.dotColor = [UIColor yellowColor]; // 自定义分页控件小圆标颜色
    cycleScrollView.placeholderImage = [UIImage imageNamed:@"placeholder"];
    [self setBannerData];
    [self.view addSubview:cycleScrollView];
    
    
    UICollectionViewFlowLayout *flowLayout= [[UICollectionViewFlowLayout alloc] init];
    flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    flowLayout.minimumLineSpacing = 10.0f;/**< 行间距 */
    flowLayout.minimumInteritemSpacing = 10.0f;/**< 列间距 */
    flowLayout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
    
    
    _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(cycleScrollView.frame), WIDTH, HEIGHT - CGRectGetMaxY(cycleScrollView.frame)) collectionViewLayout:flowLayout];
    _collectionView.dataSource = self;
    _collectionView.delegate = self;
    _collectionView.backgroundColor = [UIColor whiteColor];
    _collectionView.allowsMultipleSelection = YES;
    _collectionView.showsVerticalScrollIndicator = NO;
    [_collectionView registerClass:[VideoView class] forCellWithReuseIdentifier:BOXCELL_ID];
    [_collectionView registerClass:[BoxView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:BOXCELL_TITLE_ID];

    [self.view addSubview:_collectionView];


 
}
#pragma mark - dataSource for collectionView


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return self.homeModel.boxes.count;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    
    return ((Boxes *)self.homeModel.boxes[section]).videos.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    VideoView *videoView = [collectionView dequeueReusableCellWithReuseIdentifier:BOXCELL_ID forIndexPath:indexPath];

    Videos *videoModel = ((Boxes *)self.homeModel.boxes[indexPath.section]).videos[indexPath.item];
    

    [videoView loadDataWithModel:videoModel];
    return videoView;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    
//    if (kind == UICollectionElementKindSectionHeader) {
    
        BoxView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:BOXCELL_TITLE_ID forIndexPath:indexPath];
        [headerView loadDataWithModel:self.homeModel.boxes[indexPath.section]];
 
        return headerView;
        
//    }
}

#pragma mark - Delegate for UICollectionViewFlowLayout

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(172, 120);
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    
    return CGSizeMake(WIDTH, 55);
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"%ld 的 item 被选中了",indexPath.row);
    UICollectionViewCell *cell = [collectionView cellForItemAtIndexPath:indexPath];
    cell.selected = !cell.selected;
    
    
}

- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath{
    
}
- (void)collectionView:(UICollectionView *)collectionView didHighlightItemAtIndexPath:(NSIndexPath *)indexPath{
    
//    UICollectionViewCell *cell = [collectionView cellForItemAtIndexPath:indexPath];
//    cell.backgroundColor = [UIColor blueColor];
    
}


- (void)setBannerData{
    
    NSMutableArray *bannerArray = [NSMutableArray array];
    NSMutableArray *bannerTitles = [NSMutableArray array];
    for (Banner *banner in self.homeModel.banner) {
        [bannerArray addObject:banner.bigImg];
        [bannerTitles addObject:banner.title];
    }
    cycleScrollView.imageURLStringsGroup = bannerArray;
    cycleScrollView.titlesGroup = bannerTitles;
    
}
- (void)loadData{
    
    [NetworkService HomeRequestWithURL:nil parameters:nil success:^(id data) {

        HomeModel *homeModel = [[HomeModel alloc] initWithDictionary:data];
        
        self.homeModel = homeModel;
        [self setBannerData];
        [_collectionView reloadData];
    } failure:^(NSError *error) {
        debugLog(@"网络请求错误，请检查您的网络！");
    }];
}

- (void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index{
    
}
@end
