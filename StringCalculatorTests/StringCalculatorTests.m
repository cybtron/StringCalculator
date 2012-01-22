//
//  StringCalculatorTests.m
//  StringCalculatorTests
//
//  Created by Hasaan Gilani on 1/19/12.
//  Copyright (c) 2012 HG Corporation. All rights reserved.
//

#import "StringCalculatorTests.h"
#import "StringCalculator.h"

@implementation StringCalculatorTests

StringCalculator *calculator;
int sum;
- (void)setUp
{
    calculator = [[StringCalculator alloc] init];
}

- (void) test_NoNumber_ShouldReturnZero
{
    sum   = [calculator add:@""];
    STAssertEquals(0, sum, @"The numbers should be the same");
}

- (void) test_OneNumber_ShouldReturnSameNumber
{
    sum   = [calculator add:@"1"];
    STAssertEquals(1, sum, @"The numbers should be the same");
    
    sum   = [calculator add:@"2"];
    STAssertEquals(2, sum, @"The numbers should be the same");
}

- (void) test_TwoNumbersSeperatedByCommas_ShouldReturnTheirSum
{
    sum   = [calculator add:@"1,2"];
    STAssertEquals(3, sum, @"The numbers should be the same");
    
    sum   = [calculator add:@"2,2"];
    STAssertEquals(4, sum, @"The numbers should be the same");
}

- (void) test_MultipleNumbersSeperatedByCommas_ShouldReturnTheirSum
{
    sum   = [calculator add:@"1,2,3"];
    STAssertEquals(6, sum, @"The numbers should be the same");
    
    sum   = [calculator add:@"2,2,2,2,2"];
    STAssertEquals(10, sum, @"The numbers should be the same");
    
}

- (void) test_MultipleNumbersSeperatedByNewLineAndCommas_ShouldReturnTheirSum
{
    sum   = [calculator add:@"1\n2,3"];
    STAssertEquals(6, sum, @"The numbers should be the same");
    
    sum   = [calculator add:@"2\n2,2,2\n2"];
    STAssertEquals(10, sum, @"The numbers should be the same");
}

@end
