//
//  ViewController.m
//  ashi-garami
//
//  Created by Dave Gumba on 2018-03-01.
//  Copyright © 2018 Dave's Organization. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger i = 10;
    return i;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *tableIdentifier = @"CoinCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableIdentifier];
    }
    
    return cell;
}

@end
