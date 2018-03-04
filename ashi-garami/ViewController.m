//
//  ViewController.m
//  ashi-garami
//
//  Created by Dave Gumba on 2018-03-01.
//  Copyright © 2018 Dave's Organization. All rights reserved.
//

#import "ViewController.h"
#import "CoinCell.h"
#import "Coin.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController
{
    NSArray *ranks;
    NSArray *symbols;
    NSArray *names;
    NSArray *priceUSDs;
    NSArray *percentageChangesOneHour;
    NSMutableArray *coins;
    NSMutableArray *filteredCoins;
    Boolean inSearchMode;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ranks = [NSArray arrayWithObjects:[NSNumber numberWithInt:1],[NSNumber numberWithInt:2],[NSNumber numberWithInt:3],[NSNumber numberWithInt:4], nil];
    symbols = [NSArray arrayWithObjects:@"BTC", @"ETH", @"XRP", @"BCH", nil];
    names = [NSArray arrayWithObjects:@"Bitcoin", @"Ethereum", @"Ripple", @"Bitcoin Cash", nil];
    priceUSDs = [NSArray arrayWithObjects:[NSNumber numberWithFloat:0.663061], [NSNumber numberWithFloat:5.37048], [NSNumber numberWithFloat:0.0351729], [NSNumber numberWithFloat:11349.9], nil];
    percentageChangesOneHour = [NSArray arrayWithObjects:@"-0.02%", @"+3.69%", @"-2.16%", @"+9.94%", nil];
    
    coins = [[NSMutableArray alloc] initWithCapacity:4];
    inSearchMode = NO;
    
    for (int i = 0; i <= [ranks count] - 1; i++) {
        Coin *coin = [[Coin alloc] initWithName:[names objectAtIndex:i] symbol:[symbols objectAtIndex:i] rank:[ranks objectAtIndex:i] priceUSD:[priceUSDs objectAtIndex:i] percentChangeHour:[percentageChangesOneHour objectAtIndex:i]];
        
        [coins addObject:coin];
    }
    
    _tableView.delegate = self;
    _searchBar.delegate = self;
    
}

#pragma mark - UITableView

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [ranks count];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%@", [[coins objectAtIndex:indexPath.row] name]);
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *tableIdentifier = @"CoinCell";
    
    CoinCell *cell = (CoinCell *)[tableView dequeueReusableCellWithIdentifier:tableIdentifier];
    
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CoinCell" owner:self options: nil];
        cell = [nib objectAtIndex:0];
    }
    
    //Coin *currentCoin = [[Coin alloc] init];
    
//    if (inSearchMode) {
//        currentCoin = [filteredCoins indexOfObject:indexPath.row];
//    } else {
//        currentCoin = [coins indexOfObject:indexPath.row];
//    }
    
    cell.rankLabel.text = [[[coins objectAtIndex:indexPath.row] rank] stringValue];
    cell.symbolLabel.text = [[coins objectAtIndex:indexPath.row] symbol];
    cell.nameLabel.text = [[coins objectAtIndex:indexPath.row] name];
    
    NSString *priceUSDLabelText = [[[coins objectAtIndex:indexPath.row] priceUSD] stringValue];
    cell.priceUSDLabel.text = [NSString stringWithFormat:@"$%@", priceUSDLabelText];
    
    NSString *percentChangeOneHourText = [[coins objectAtIndex:indexPath.row] percentChangeHour];
    cell.percentChangeOneHourLabel.text = percentChangeOneHourText;
    cell.percentChangeOneHourLabel.textColor = [percentChangeOneHourText hasPrefix:@"-"] ? [UIColor redColor] : [UIColor greenColor];
    
    return cell;
}

#pragma mark - UISearchBar
-(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
    
    if (searchText == nil || [searchText isEqualToString:@""]) {
        inSearchMode = NO;
       [_tableView reloadData];
    } else {
        inSearchMode = YES;
        
        //NSString *lowerCasedText = [searchText lowercaseString];
        //NSPredicate *filterBySearchPredicate = [NSPredicate predicateWithFormat:@"SELF contains %", lowerCasedText];
        //filteredCoins = [coins filteredArrayUsingPredicate:filterBySearchPredicate];
        [_tableView reloadData];
    }
}

@end
