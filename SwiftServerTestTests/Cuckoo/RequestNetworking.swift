//
//  RequestNetworking.swift
//  SwiftServerTestTests
//
//  Created by Tyler on 2019/11/26.
//  Copyright © 2019 tyler. All rights reserved.
//

import Foundation
import XCTest
import Cuckoo
@testable import SwiftServerTest

class RequestNetworkingTests: XCTestCase {
    var request: MockRequestNetworking!

    override func setUp() {
        request = MockRequestNetworking()
    }

    override func tearDown() {
    }

    func testExample() {
        request.setMockking()
        
        let executeExpectation = XCTestExpectation(description: "in closure")
        
        request.request { github in
            
            XCTAssertEqual(github.location, "location")
            XCTAssertEqual(github.name, "name")
            executeExpectation.fulfill()
        }
        wait(for: [executeExpectation], timeout: 2)
    }
}

extension MockRequestNetworking {

    func setMockking() {
        stub(self) { stub in
            stub.request(closure: any()).then { _ in
                return GitHub(name: "name", location: "location")
            }
        }
    }
}
