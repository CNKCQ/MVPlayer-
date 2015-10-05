//
//  VideoView.h
//  MVPlayer
//
//  Created by Jack on 15/10/5.
//  Copyright © 2015年 Jack. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Videos.h"

@interface VideoView : UICollectionViewCell

- (void)loadDataWithModel:(Videos *)videoModel;

@end
