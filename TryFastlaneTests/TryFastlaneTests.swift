//
//  TryFastlaneTests.swift
//  TryFastlaneTests
//
//  Created by SOL MAC 15 on 20/12/19.
//  Copyright © 2019 SOL MAC 15. All rights reserved.
//

import XCTest
@testable import TryFastlane

class TryFastlaneTests: XCTestCase {

    let vc = ViewController()
    override func setUp() {
        
    }

    override func tearDown() {
        
    }

    func testExample() {
        var val = vc.FunctinTest(value1: 10,Value2: 20)
        XCTAssertTrue(val == 30, "Test is right")
    }


}
