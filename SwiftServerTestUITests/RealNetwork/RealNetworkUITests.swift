//
//  SwiftStubsUITests.swift
//  SwiftStubsUITests
//
//  Created by Shashikant Jagtap on 16/11/2017.
//  Copyright © 2017 Shashikant Jagtap. All rights reserved.
//

import XCTest
import SwiftShell

extension XCTestCase {
    func wait(forElement element: XCUIElement, timeout: TimeInterval) {
        let predicate = NSPredicate(format: "exists == 1")
        // This will make the test runner continously evalulate the
        // predicate, and wait until it matches.
        expectation(for: predicate, evaluatedWith: element)
        waitForExpectations(timeout: timeout)
    }
}

class RealNetworkUITests: XCTestCase {

//    var realapp: XCUIApplication!
    override func setUp() {
        super.setUp()

        continueAfterFailure = false

    }

    override func tearDown() {

        super.tearDown()
    }


    func testWithRealEndPoints() {
        let stringarray = ["one", "two"]
        XCTAssertEqual(run("/bin/echo", stringarray).stdout, "one two")
        let realapp = XCUIApplication()
        realapp.launchEnvironment = ["BASEURL": "http://localhost:11551"]
        realapp.launch()
        realapp.buttons["MakeNetworkRequest"].tap()
        let location = realapp.staticTexts["Kitura"]
        wait(forElement: location, timeout: 3)
        XCTAssertTrue(location.exists)
    }
}

