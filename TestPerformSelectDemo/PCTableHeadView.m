//
//  PCTableHeadView.m
//  TestPerformSelectDemo
//
//  Created by voidxin on 2018/5/15.
//  Copyright © 2018年 Pconline. All rights reserved.
//

#import "PCTableHeadView.h"

@implementation PCTableHeadView

- (void)scrollerContentView:(UIScrollView *)scrollView {
    CGFloat offsetY = scrollView.contentOffset.y;
    NSLog(@"offsetY=%f",offsetY);
    if (offsetY <= 0) {
        self.imageTopLayout.constant = offsetY;
    }
}

@end
