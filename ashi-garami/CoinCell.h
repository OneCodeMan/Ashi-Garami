//
//  CoinCell.h
//  ashi-garami
//
//  Created by Dave Gumba on 2018-03-03.
//  Copyright © 2018 Dave's Organization. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CoinCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *rankLabel;
@property (nonatomic, weak) IBOutlet UILabel *symbolLabel;
@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *priceUSDLabel;
@property (nonatomic, weak) IBOutlet UILabel *percentChangeOneHourLabel;

@end
