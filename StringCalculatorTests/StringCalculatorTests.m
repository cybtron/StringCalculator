//
//  StringCalculatorTests.m
//  StringCalculatorTests
//
//  Created by Hasaan Gilani on 1/19/12.
//  Copyright (c) 2012 HSG Corporation. All rights reserved.
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

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void) test_NoNumber_ShouldReturnZero
{
    sum   = [calculator calculateSum:@""];
    STAssertEquals(0, sum, @"The numbers should be the same");
}

- (void) test_OneNumber_ShouldReturnSameNumber
{
    sum   = [calculator calculateSum:@"1"];
    STAssertEquals(1, sum, @"The numbers should be the same");
    
    sum   = [calculator calculateSum:@"2"];
    STAssertEquals(2, sum, @"The numbers should be the same");
    
}

- (void) test_TwoNumbersSeperatedByCommas_ShouldReturnTheirSum
{
    sum   = [calculator calculateSum:@"1,2"];
    STAssertEquals(3, sum, @"The numbers should be the same");
    
    sum   = [calculator calculateSum:@"2,2"];
    STAssertEquals(4, sum, @"The numbers should be the same");
    
}

- (void) test_MultipleNumbersSeperatedByCommas_ShouldReturnTheirSum
{
    sum   = [calculator calculateSum:@"1,2,3"];
    STAssertEquals(6, sum, @"The numbers should be the same");
    
    sum   = [calculator calculateSum:@"2,2,2,2,2"];
    STAssertEquals(10, sum, @"The numbers should be the same");
    
}




@end
