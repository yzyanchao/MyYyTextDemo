//
//  MyTextCell.h
//  MyYyTextDemo
//
//  Created by yan on 2018/8/27.
//  Copyright © 2018 yan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class YYLabel;

@interface MyTextCell : UITableViewCell

@property (nonatomic, strong) YYLabel *myLabel;

- (void)setData:(NSString *)data;
- (CGFloat)heightForMyLabel;

@end
