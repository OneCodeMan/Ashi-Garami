//
//  CoinCell.m
//  ashi-garami
//
//  Created by Dave Gumba on 2018-03-03.
//  Copyright © 2018 Dave's Organization. All rights reserved.
//

#import "CoinCell.h"

@implementation CoinCell

@synthesize rankLabel = _rankLabel;
@synthesize symbolLabel = _symbolLabel;
@synthesize nameLabel = _nameLabel;
@synthesize priceUSDLabel = _priceUSDLabel;
@synthesize percentChangeOneHourLabel = _percentChangeOneHourLabel;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
