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

static CGFloat myLabelLineSpacing = 5;

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
    _myLabel.numberOfLines = 0;
    [self addSubview:_myLabel];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    _myLabel.frame = CGRectMake(8, 8, UIScreen.mainScreen.bounds.size.width - 16, self.frame.size.height - 16);
}

- (void)setData:(NSString *)data {
    NSDictionary *attributes = @{NSFontAttributeName: [UIFont systemFontOfSize: 14],
                                 NSForegroundColorAttributeName: [UIColor colorWithWhite:102.0/255.0 alpha:1]};
    NSMutableAttributedString *text = [[NSMutableAttributedString alloc] initWithString:data attributes:attributes];
    text.yy_lineSpacing = myLabelLineSpacing;
    self.myLabel.attributedText = text;
}

- (CGFloat)heightForMyLabel {
    CGSize labelSize = CGSizeMake(UIScreen.mainScreen.bounds.size.width - 16, CGFLOAT_MAX);
    YYTextLayout *layout = [YYTextLayout layoutWithContainerSize:labelSize text:self.myLabel.attributedText];
    CGFloat height = ceil(layout.textBoundingSize.height);
    return height;
}

@end
