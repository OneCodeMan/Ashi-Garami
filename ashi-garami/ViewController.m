//
//  ViewController.m
//  ashi-garami
//
//  Created by Dave Gumba on 2018-03-01.
//  Copyright © 2018 Dave's Organization. All rights reserved.
//

#import "ViewController.h"
#import "CoinCell.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSArray *ranks;
    NSArray *symbols;
    NSArray *names;
    NSArray *priceUSDs;
    NSArray *percentageChangesOneHour;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ranks = [NSArray arrayWithObjects:[NSNumber numberWithInt:1],[NSNumber numberWithInt:9],[NSNumber numberWithInt:27],[NSNumber numberWithInt:135], nil];
    symbols = [NSArray arrayWithObjects:@"BTC", @"NANO", @"ETH", @"XVG", nil];
    names = [NSArray arrayWithObjects:@"Bitcoin", @"BitShares", @"Bitcoin Cash", @"Basic Attention Token", nil];
    priceUSDs = [NSArray arrayWithObjects:[NSNumber numberWithFloat:0.663061], [NSNumber numberWithFloat:5.37048], [NSNumber numberWithFloat:0.0351729], [NSNumber numberWithFloat:11349.9], nil];
    percentageChangesOneHour = [NSArray arrayWithObjects:@"-0.02", @"+3.69", @"-2.16", @"+9.94", nil];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *tableIdentifier = @"CoinCell";
    
    CoinCell *cell = (CoinCell *)[tableView dequeueReusableCellWithIdentifier:tableIdentifier];
    
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CoinCell" owner:self options: nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.rankLabel.text = [[ranks objectAtIndex:indexPath.row] stringValue];
    cell.symbolLabel.text = [symbols objectAtIndex:indexPath.row];
    cell.nameLabel.text = [names objectAtIndex:indexPath.row];
    
    NSString *priceUSDLabelText = [[priceUSDs objectAtIndex:indexPath.row] stringValue];
    cell.priceUSDLabel.text = [NSString stringWithFormat:@"$%@", priceUSDLabelText];
    
    NSString *percentChangeOneHourText = [percentageChangesOneHour objectAtIndex:indexPath.row];
    cell.percentChangeOneHourLabel.text = [NSString stringWithFormat:@"%@%%", percentChangeOneHourText];
    cell.percentChangeOneHourLabel.textColor = [percentChangeOneHourText hasPrefix:@"-"] ? [UIColor redColor] : [UIColor greenColor];
    
    return cell;
}

@end
