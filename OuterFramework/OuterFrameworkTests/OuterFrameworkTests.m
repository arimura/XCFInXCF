//
//  OuterFrameworkTests.m
//  OuterFrameworkTests
//
//  Created by k-arimura on 2022/04/04.
//

#import <XCTest/XCTest.h>
#import <OuterFramework/OuterFramework.h>

@interface OuterFrameworkTests : XCTestCase

@end

@implementation OuterFrameworkTests

- (void)testHoge {
    XCTAssertEqualObjects([OTFCreator getHoge], @"Hoge");
}
@end
