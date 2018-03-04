//
//  HelperClass.m
//  ashi-garami
//
//  Created by Dave Gumba on 2018-03-03.
//  Copyright © 2018 Dave's Organization. All rights reserved.
//

#import "HelperClass.h"

@implementation HelperClass

+(NSString *)generatePercentageChangeText:(NSString *) percentageChangeText {
    
    if (![percentageChangeText hasPrefix:@"-"]) {
        return [NSString stringWithFormat: @"+%%%@", percentageChangeText];
    }
    
    return percentageChangeText;
}

@end
