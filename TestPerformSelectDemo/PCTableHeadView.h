//
//  PCTableHeadView.h
//  TestPerformSelectDemo
//
//  Created by voidxin on 2018/5/15.
//  Copyright © 2018年 Pconline. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PCTableHeadView : UIView
@property (weak, nonatomic) IBOutlet UIImageView *backImageView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageTopLayout;
- (void)scrollerContentView:(UIScrollView *)scrollView;
@end
