//
//  Dict_Package_SampleTests.m
//  Dict Package SampleTests
//
//  Created by Daniele Spagnolo on 19/02/2014.
//  Copyright (c) 2014 SpagOSX. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface Dict_Package_SampleTests : XCTestCase

@end

@implementation Dict_Package_SampleTests

- (void)testSamplePassingTest {
    XCTAssert(2+2 == 4 );
}

- (void)testSampleFailingTest {
    XCTAssert(2+2 == 5);
}

- (void)testAnotherOne {
    XCTAssert(YES);
}

@end
