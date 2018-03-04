//
//  Coin.m
//  ashi-garami
//
//  Created by Dave Gumba on 2018-03-03.
//  Copyright © 2018 Dave's Organization. All rights reserved.
//

#import "Coin.h"

@implementation Coin

-(id)initWithName:(NSString *)name
           symbol:(NSString *)symbol
             rank:(NSNumber *)rank
         priceUSD:(NSNumber *)priceUSD
percentChangeHour:(NSString *)percentChangeHour {
    
    if (self = [super init]) {
        _name = [name copy];
        _symbol = [symbol copy];
        _rank = [rank copy];
        _priceUSD = [priceUSD copy];
        _percentChangeHour = [percentChangeHour copy];
    }
    
    return self;
}

@end
