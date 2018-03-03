//
//  Coin.h
//  ashi-garami
//
//  Created by Dave Gumba on 2018-03-03.
//  Copyright © 2018 Dave's Organization. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Coin : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *symbol;
@property (nonatomic, strong) NSNumber *rank;
@property (nonatomic, strong) NSNumber *priceUSD;
@property (nonatomic, strong) NSNumber *priceBTC;
@property (nonatomic, strong) NSNumber *availableSupply;
@property (nonatomic, strong) NSNumber *totalSupply;
@property (nonatomic, strong) NSNumber *maxSupply;
@property (nonatomic, strong) NSString *percentChangeHour;
@property (nonatomic, strong) NSString *percentChangeDay;
@property (nonatomic, strong) NSString *percentChangeWeek;
@property (nonatomic, strong) NSNumber *lastUpdated;

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
           lastUpdated:(NSNumber *)lastUpdated;

@end
