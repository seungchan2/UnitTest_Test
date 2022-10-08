//
//  TDD_LottoMachineTests.swift
//  TDD_LottoMachineTests
//
//  Created by 김승찬 on 2022/10/03.
//

import Foundation
import XCTest
@testable import TDD_LottoMachine

class TDD_LottoMachineTests: XCTestCase {
    
    var sut: isValid!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = isValid()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }

    func testExample() throws {
       
    }
    
    func test_addNumbers호출시_3_7_23을전달했을때_33을반환하는지() {
        let input = "231312@aqsdasd.com"
        
        let result = sut.isValidEmail(email: input)
    
        XCTAssertTrue(result)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
