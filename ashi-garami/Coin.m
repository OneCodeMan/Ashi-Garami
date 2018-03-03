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
         priceBTC:(NSNumber *)priceBTC
  availableSupply:(NSNumber *)availableSupply
      totalSupply:(NSNumber *)totalSupply
        maxSupply:(NSNumber *)maxSupply
percentChangeHour:(NSString *)percentChangeHour
 percentChangeDay:(NSString *)percentChangeDay
percentChangeWeek:(NSString *)percentChangeWeek
      lastUpdated:(NSNumber *)lastUpdated {
    
    if (self = [super init]) {
        name = name;
        symbol = symbol;
        rank = rank;
        priceUSD = priceUSD;
        priceBTC = priceBTC;
        availableSupply = availableSupply;
        totalSupply = totalSupply;
        maxSupply = maxSupply;
        percentChangeHour = percentChangeHour;
        percentChangeDay = percentChangeDay;
        percentChangeWeek = percentChangeWeek;
        lastUpdated = lastUpdated;
    }
    
    return self;
}

@end
