//
//  ATNetworkingTests.m
//  ATNetworkingTests
//
//  Created by William Locke on 4/21/16.
//  Copyright © 2016 Adtrade. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ATNetworking.h"

static int kRequestTimeout = 30;

@interface ATNetworkingTests : XCTestCase

@end

@implementation ATNetworkingTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void)testGoogleApi{
    XCTestExpectation *expectation = [self expectationWithDescription:@"LIST Volumes"];
    
    [[ATNetworking sharedInstance] requestURL:@"https://www.googleapis.com/books/v1/volumes?q=harry+potter" completionHandler:^(NSDictionary *item, NSArray *items, NSError *error, NSDictionary *errorDictionary, NSURLResponse *response, NSDictionary *data) {
        
        if (items) {
            XCTAssert(YES, @"Returned book volumes");
            [expectation fulfill];
        }else{
            XCTAssert(NO, @"Error retrieving book volumes");
            [expectation fulfill];
        }
    }];
    
    
    [self waitForExpectationsWithTimeout:kRequestTimeout handler:^(NSError *error) {
        if (error != nil) {
            NSLog(@"Error: %@", error.localizedDescription);
        }
    }];
}

@end
