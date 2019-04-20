//
//  WebCell.m
//  UITableViewAutoH
//
//  Created by XKSMan on 2019/4/20.
//  Copyright © 2019 XKSMan. All rights reserved.
//

#import "WebCell.h"

@interface WebCell ()<UIWebViewDelegate>

@end

@implementation WebCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)loadUrl:(NSString *)url {
    
    if ([url isEqualToString:self.urlStr]) {
        return;
    }

    self.urlStr = url;
    
    self.webView.scrollView.scrollEnabled = NO;
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
    [self.webView loadRequest:request];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    CGSize actualSize = [webView sizeThatFits:CGSizeZero];
    CGFloat webViewHeight = actualSize.height;
    
//    self.webView.frame = CGRectMake(0, 8, [UIScreen mainScreen].bounds.size.width, webViewHeight);
    self.webH.constant = webViewHeight;
    [self.contentView sizeThatFits:CGSizeZero];
    
    if (self.updateBlock) {
        self.updateBlock();
    }
}

@end
