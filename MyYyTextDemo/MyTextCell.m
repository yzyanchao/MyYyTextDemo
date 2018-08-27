//
//  MyTextCell.m
//  MyYyTextDemo
//
//  Created by yan on 2018/8/27.
//  Copyright © 2018 yan. All rights reserved.
//

#import <YYText.h>
#import "MyTextCell.h"

@implementation MyTextCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self commonInit];
    }
    
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self commonInit];
}

- (void)commonInit {
    _myLabel = [[YYLabel alloc] init];
    [self addSubview:_myLabel];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    _myLabel.frame = CGRectMake(8, 8, UIScreen.mainScreen.bounds.size.width - 16, 28);
}

@end
