//
//  ActivityUItestCase.m
//  activityViewPrac
//
//  Created by Joseph.Tsai on 2016/7/25.
//  Copyright © 2016年 Joseph.Tsai. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "activityViewPrac-swift.h"


@interface ActivityUItestCase : XCTestCase

@end

@implementation ActivityUItestCase

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];

    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // Use recording to get started writing UI tests.
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.buttons[@"Share"] tap];
    
    XCUIElementQuery *sheetsQuery = app.sheets;
        [Snapshot snapshot:@"fu1" waitForLoadingIndicator:YES];
    
    [[sheetsQuery.collectionViews.cells.collectionViews containingType:XCUIElementTypeButton identifier:@"Mail"].buttons[@"More"] tap];
        [Snapshot snapshot:@"fu2" waitForLoadingIndicator:YES];
    
    [app.navigationBars[@"Activities"].buttons[@"Done"] tap];
        [Snapshot snapshot:@"fu3" waitForLoadingIndicator:YES];
    
    [sheetsQuery.buttons[@"Cancel"] tap];
    

    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

@end
