//
//  VideoDetailController.m
//  MVPlayer
//
//  Created by Jack on 15/10/5.
//  Copyright © 2015年 Jack. All rights reserved.
//

#define VIDEO_CELL_ID @"video_cell_id"

#import "VideoDetailController.h"
#import "Videos.h"
#import "UIImageView+WebCache.h"
#import "Detail.h"
#import "VideoDetailCell.h"
#import "RecommendMadel.h"
#import "Results.h"
@interface VideoDetailController ()<UITableViewDelegate,UITableViewDataSource>{
    UIButton *backBtn;
}

@property (nonatomic, strong) UIWebView *webView;
@property (nonatomic, strong) VideoResponce *videoResponceModel;
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) RecommendMadel *recommendMadel;


@end

@implementation VideoDetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNavigationBar];
    [self requestDetailData4Videos];
    [self addWebView];
    [self requestData4recommend];
    [self addTableView];

}
- (void)setNavigationBar{
    UIView *statusBackgroundView = [[UIView alloc] initWithFrame:CGRectMake(0, 20, WIDTH, 20)];
    statusBackgroundView.backgroundColor = [UIColor blackColor];
        [self.view addSubview:statusBackgroundView];
    backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    backBtn.frame = CGRectMake(15, 10, 30, 30);
    [backBtn addTarget:self action:@selector(backAction:) forControlEvents:UIControlEventTouchUpInside];
    [backBtn setImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
    [self.view addSubview:backBtn];
}
- (void)addWebView{
    
    _webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 5, WIDTH, 220)];
    [_webView scalesPageToFit];
    _webView.backgroundColor = [UIColor blueColor];
    [_webView addSubview:backBtn];
    [self.view addSubview:_webView];
}

- (void)addTableView{
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(_webView.frame), WIDTH, HEIGHT - CGRectGetMaxY(_webView.frame)) style:UITableViewStylePlain];
    _tableView.dataSource = self;
    
    _tableView.delegate = self;
    
    _tableView.showsVerticalScrollIndicator = NO;
    
    [_tableView registerClass:[VideoDetailCell class] forCellReuseIdentifier:VIDEO_CELL_ID];
    [self.view addSubview:_tableView];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    VideoDetailCell *cell = [tableView dequeueReusableCellWithIdentifier:VIDEO_CELL_ID forIndexPath:indexPath];
    Results *resultsModel = self.recommendMadel.results[indexPath.row];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    [cell loadDataWithDetailModel:resultsModel];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 80;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    debugLog(@"我选中了第 %lu 行",indexPath.row);
}
- (void)requestDetailData4Videos{
    
    NSString *urlStr = [NSString stringWithFormat:@"%@guid=%@&idfa=%@&iid=%@&network=%@&operator=%@&ouid=%@&pid=%@&show_playlist=%@&vdid=%@&ver=%@",PLAYURL,GUID,IDFA,self.videoModel.iid,NETWORK,OPERATOR,OUID,PID,@"1",VDID,VER];
    
    [NetworkService videoDetailRequestWithURL:urlStr parameters:nil success:^(id data) {
        _videoResponceModel = [[VideoResponce alloc] initWithDictionary:data];
        NSString *urlStr = [NSString stringWithFormat:@"%@%@",VIDEO_URL,self.videoModel.iid];
        [_webView loadRequest:[[NSURLRequest alloc] initWithURL:[NSURL URLWithString:urlStr]]];
        
    } failure:^(NSError *error) {
        
        
    }];
    
    
}
- (void)requestData4recommend{
    
       NSString *urlStr = [NSString stringWithFormat:@"http://rec.api.3g.tudou.com/v4/recommend/video?count=20&filterpay=0&guid=7066707c5bdc38af1621eaf94a6fe779&idfa=ACAF9226-F987-417B-A708-C95D482A732D&itemCode=%@&network=WIFI&ouid=10099212c9e3829656d4ea61e3858d53253b2f07&pg=1&pid=c0637223f8b69b02&pz=30&vdid=9AFEE982-6F94-4F57-9B33-69523E044CF4&ver=4.9.1",self.videoModel.iid];
    
    [NetworkService getRecommendRequestWithURL:urlStr parameters:nil success:^(id data) {
       
        _recommendMadel = [[RecommendMadel alloc] initWithDictionary:data];
        [_tableView reloadData];
        
    } failure:^(NSError *error) {
        
        
    }];
}
- (void)backAction:(UIButton *)sender{
    
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;

}
- (UIStatusBarStyle)preferredStatusBarStyle{
    
    return UIStatusBarStyleLightContent;
}
@end
