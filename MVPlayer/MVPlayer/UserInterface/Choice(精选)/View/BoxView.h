//
//  BoxView.h
//  MVPlayer
//
//  Created by Jack on 15/10/5.
//  Copyright © 2015年 Jack. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Boxes.h"

@interface BoxView : UICollectionViewCell

- (void)loadDataWithModel:(Boxes *)boxModel;

@end
