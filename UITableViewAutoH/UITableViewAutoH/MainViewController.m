//
//  MainViewController.m
//  UITableViewAutoH
//
//  Created by XKSMan on 2019/4/20.
//  Copyright © 2019 XKSMan. All rights reserved.
//

#import "MainViewController.h"
#import "NormalCell.h"
#import "WebCell.h"

@interface MainViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"NormalCell" bundle:nil] forCellReuseIdentifier:@"NormalCell"];
    [self.tableView registerNib:[UINib nibWithNibName:@"WebCell" bundle:nil] forCellReuseIdentifier:@"WebCell"];
    self.tableView.estimatedRowHeight = 300.f;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    [self.tableView reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0 || indexPath.row == 3) {
        NormalCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NormalCell" forIndexPath:indexPath];
        if (indexPath.row == 0) {
            cell.titleLabel.text = @"为了保护手机中的隐私或者数据不让他人轻易打开我们手机中的QQ相册等应用都可以设置应用锁自己使用的时候采用面容识别的方式解锁。当然，如果你愿意将这些小秘密";
        } else {
            cell.titleLabel.text = @"ha啊的额爱阿斯顿发送到发垃圾圣诞节";
        }
        return cell;
    }
    
    WebCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WebCell" forIndexPath:indexPath];
    if (indexPath.row == 1) {
        [cell loadUrl:@"https://www.jianshu.com/p/7e9c626ec3d1?utm_campaign=maleskine&utm_content=note&utm_medium=seo_notes&utm_source=recommendation"];
    } else {
        [cell loadUrl:@"https://www.jianshu.com/p/ab934512800f"];
    }
    
    __weak typeof(self)weakSelf = self;
    cell.updateBlock = ^{
        [weakSelf.tableView reloadData];

    };
    
    return cell;
}

@end
