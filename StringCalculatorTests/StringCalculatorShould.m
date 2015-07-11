#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "StringCalculator.h"

@interface StringCalculatorShould : XCTestCase

@end

@implementation StringCalculatorShould

StringCalculator* calculator;

- (void)setUp
{
    [super setUp];
    calculator = [[StringCalculator alloc] init];
}

- (void)tearDown
{
    calculator = nil;
    [super tearDown];
}

- (void)testThatReturnsZeroForEmptyString
{
    int result = [calculator add:@""];
    
    XCTAssertEqual(result, 0);
}

- (void)testThatReturnItSelfForOneNumber
{
    int result = [calculator add:@"1"];
    
    XCTAssertEqual(result, 1);
}

- (void)testThatReturnsTheSumOf2Numbers
{
    int result = [calculator add:@"1,2"];
    
    XCTAssertEqual(result, 3);
}

- (void)testThatReturnsTheSumOfAllNumbersInString
{
    int result = [calculator add:@"1,2,3"];
    
    XCTAssertEqual(result, 6);
}

@end
