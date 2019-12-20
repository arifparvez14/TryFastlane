//
//  TryFastlaneUITests.swift
//  TryFastlaneUITests
//
//  Created by SOL MAC 15 on 19/12/19.
//  Copyright © 2019 SOL MAC 15. All rights reserved.
//

import XCTest

class TryFastlaneUITests: XCTestCase {

    func testExample() {
        // 1
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
        // 2
        let chipCountTextField = app.textFields["chip count"]
        chipCountTextField.tap()
        chipCountTextField.typeText("10")
        // 3
        let bigBlindTextField = app.textFields["big blind"]
        bigBlindTextField.tap()
        bigBlindTextField.typeText("100")
        // 4
        snapshot("01UserEntries")
        // 5
        app.buttons["what should i do"].tap()
        snapshot("02Suggestion")

    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
