//
//  StringCalculatorTests.m
//  StringCalculatorTests
//
//  Created by Ana Nogal on 11/07/2015.
//  Copyright (c) 2015 Ana Nogal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "StringCalculator.h"

@interface StringCalculatorShould : XCTestCase

@end

@implementation StringCalculatorShould

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThatEmptyStringEqualZero{
    
    StringCalculator* calculator = [[StringCalculator alloc] init];
    
    int result = [calculator add:@""];
    
    XCTAssertEqual(result, 0);
}

@end
