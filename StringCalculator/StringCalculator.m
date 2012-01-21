//
//  StringCalculator.m
//  StringCalculator
//
//  Created by Hasaan Gilani on 1/20/12.
//  Copyright (c) 2012 HSG Corporation. All rights reserved.
//

#import "StringCalculator.h"

@implementation StringCalculator

- (int)handleEmptyString
{
    return 0;
}

- (int)handleStringWithSingleNumber:(NSString *)numbers
{
    return [numbers intValue];
}

- (int)handleStringWithMultipleNumbers:(NSString *)numbers
{
    NSArray *numberArray =  [numbers componentsSeparatedByString:@","];
    int sum = 0;
    for (NSString* number in numberArray) {
        sum += [number intValue];
    }
    return sum;
}

-(int) calculateSum:(NSString *)numbers
{
    if (numbers.length == 0) {
        return [self handleEmptyString];
    }
    if (numbers.length == 1) {
        return [self handleStringWithSingleNumber:numbers];
    }
    if (numbers.length > 1) {
        return [self handleStringWithMultipleNumbers:numbers];
    }
    return 0;
}

@end
