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
@property (nonatomic, strong) NSString *percentChangeHour;

-(id)initWithName:(NSString *)name
           symbol:(NSString *)symbol
           rank:(NSNumber *)rank
           priceUSD:(NSNumber *)priceUSD
           percentChangeHour:(NSString *)percentChangeHour;

@end
