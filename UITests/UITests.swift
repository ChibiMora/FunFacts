//
//  UITests.swift
//  UITests
//
//  Created by Crystal Mora on 2/28/16.
//  Copyright © 2016 Crystal Mora. All rights reserved.
//

import XCTest

class UITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        let showAnotherFunFactButton = app.buttons["Show Another Fun Fact"]
        showAnotherFunFactButton.tap()
        
        let factLabel = app.staticTexts["Fact Label"].label
        print(factLabel)
        let firstFact = app.staticTexts["Fact Label"].value as! String
        print(firstFact)
        app.staticTexts["Did you know?"].tap()
        showAnotherFunFactButton.tap()
        app.staticTexts["Some penguins can leap 2-3 meters out of the water."].tap()

        
    }
    
}
