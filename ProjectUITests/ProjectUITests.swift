//
//  ProjectUITests.swift
//  ProjectUITests
//
//  Created by Rustam Keneev on 6/11/21.
//

import XCTest

class ProjectUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
       
    }

    func testCalculatPeoject() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.textFields["Enter math func"].clearAndEnterText(text: "10 + 10")
        app.buttons["Math"].tap()
        app.textViews["20.0"]
        
        app.textFields["Enter math func"].clearAndEnterText(text: "20 + 10 - 5")
        app.buttons["Math"].tap()
        app.textViews["25.0"]
        
        app.textFields["Enter math func"].clearAndEnterText(text: "10.5 + 10.2")
        app.buttons["Math"].tap()
        app.textViews["20.7"]
        
        app.textFields["Enter math func"].clearAndEnterText(text: "0")
        app.buttons["Math"].tap()
        app.textViews["0.0"]
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}

extension XCUIApplication {
    func dismissKeyboardIfPresent() {
        if keyboards.element(boundBy: 0).exists {
            if UIDevice.current.userInterfaceIdiom == .pad {
                keyboards.buttons["Hide keyboard"].tap()
            } else {
                toolbars.buttons["Done"].tap()
            }
        }
    }
}

extension XCUIElement {
    /**
     Removes any current text in the field before typing in the new value
     - Parameter text: the text to enter into the field
     */
    func clearAndEnterText(text: String) {
        guard let stringValue = self.value as? String else {
            XCTFail("Tried to clear and enter text into a non string value")
            return
        }

        self.tap()

        let deleteString = String(repeating: XCUIKeyboardKey.delete.rawValue, count: stringValue.count)

        self.typeText(deleteString)
        self.typeText(text)
    }
}
