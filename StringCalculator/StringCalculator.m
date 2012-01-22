//
//  StringCalculator.m
//  StringCalculator
//
//  Created by Hasaan Gilani on 1/20/12.
//  Copyright (c) 2012 HG Corporation. All rights reserved.
//

#import "StringCalculator.h"

@implementation StringCalculator

NSString *delimeter_list = @"\n,";

- (int)handleEmptyString
{
    return 0;
}

- (int)handleStringWithSingleNumber:(NSString *)numbers
{
    return [numbers intValue];
}

- (NSArray *)obtainNumbersToBeAddedFrom:(NSString *)numbers
{
    NSCharacterSet *characterSet = [NSCharacterSet characterSetWithCharactersInString:delimeter_list];
    return [numbers componentsSeparatedByCharactersInSet:characterSet];
}

- (int)handleStringWithMultipleNumbers:(NSString *)numbers
{
    NSArray *numberArray = [self obtainNumbersToBeAddedFrom:numbers];
    int sum = 0;
    for (NSString *number in numberArray) {
        sum += [number intValue];
    }
    return sum;
}

-(int) add:(NSString *)numbers
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
