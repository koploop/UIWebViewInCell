//
//  ViewController.m
//  UITableViewAutoH
//
//  Created by XKSMan on 2019/4/20.
//  Copyright © 2019 XKSMan. All rights reserved.
//

#import "ViewController.h"
#import "MainViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)next:(UIButton *)sender {
    MainViewController *vc = [[MainViewController alloc] initWithNibName:@"MainViewController" bundle:nil];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
