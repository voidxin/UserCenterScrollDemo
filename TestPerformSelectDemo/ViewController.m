//
//  ViewController.m
//  TestPerformSelectDemo
//
//  Created by voidxin on 2018/5/14.
//  Copyright © 2018年 Pconline. All rights reserved.
//

#import "ViewController.h"
#import "PCTestObject.h"
#import "PCTableHeadView.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;
@property(nonatomic,strong)PCTableHeadView *headView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self beginView];
}

- (void)beginView {
    [self.view addSubview:self.tableView];
    self.tableView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    
    UIView *headBackView = [[UIView alloc] init];
    [headBackView addSubview:self.headView];
    self.headView.frame = headBackView.bounds;
    
    headBackView.frame = CGRectMake(0, 0, self.view.bounds.size.width, 200);
    self.tableView.tableHeaderView = headBackView;
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELL"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CELL"];
    }
    return cell;
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"CELL"];
    }
    return _tableView;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    [self.headView scrollerContentView:scrollView];
}

- (PCTableHeadView *)headView {
    if (!_headView) {
        _headView = [[NSBundle mainBundle] loadNibNamed:@"PCTableHeadView" owner:self options:nil].firstObject;
    }
    return _headView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
