//
//  ProjectTests.swift
//  ProjectTests
//
//  Created by Rustam Keneev on 6/11/21.
//

import XCTest
@testable import Project

class ProjectTests: XCTestCase {

    class ViewDelegator: ViewDelegate {
        var result: String? = nil
        
        func showResult(result: String) {
            self.result = result
        }
    }
    
    override func setUpWithError() throws {
        
    }

    override func tearDownWithError() throws {
        
    }

    func testCalculatorOne() throws {
        let delegator = ViewDelegator()
        let viewModel = ViewModel(delegate: delegator)
        
        viewModel.clickButton(titleButton: "10 + 10")
        
        XCTAssertTrue(delegator.result == "20.0", "Check clickButton")
    }

    func testCalculatorTwo() throws {
        let delegator = ViewDelegator()
        let viewModel = ViewModel(delegate: delegator)
        
        viewModel.clickButton(titleButton: "+")
        
        XCTAssertTrue(delegator.result == nil, "Check clickButton")
    }
    
    func testCalculatorThree() throws {
        let delegator = ViewDelegator()
        let viewModel = ViewModel(delegate: delegator)
        
        viewModel.clickButton(titleButton: "10 - 10")
        
        XCTAssertTrue(delegator.result == "0.0", "Check clickButton")
    }
    
    func testCalculatorForn() throws {
        let delegator = ViewDelegator()
        let viewModel = ViewModel(delegate: delegator)
        
        viewModel.clickButton(titleButton: "10.0 + 10.0")
        
        XCTAssertTrue(delegator.result == "20.0", "Check clickButton")
    }
    
    func testCalculatorFive() throws {
        let delegator = ViewDelegator()
        let viewModel = ViewModel(delegate: delegator)
        
        viewModel.clickButton(titleButton: "10 +")
        
        XCTAssertTrue(delegator.result == nil, "Check clickButton")
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
