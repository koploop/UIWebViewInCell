//
//  WebCell.h
//  UITableViewAutoH
//
//  Created by XKSMan on 2019/4/20.
//  Copyright © 2019 XKSMan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WebCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *webH;


@property (nonatomic, copy) void (^updateBlock)();

@property (nonatomic, copy) NSString *urlStr;

- (void)loadUrl:(NSString *)url;

@end

NS_ASSUME_NONNULL_END
