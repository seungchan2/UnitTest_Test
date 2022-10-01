//
//  TestTests.swift
//  TestTests
//
//  Created by 김승찬 on 2022/10/01.
//

import XCTest
@testable import Test

class LottoMachineTests: XCTestCase {
    
    var lottoMachine: LottoMachine!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        try super.setUpWithError()
        
        lottoMachine = LottoMachine()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        lottoMachine = nil
    }
    
    // isValidLottoNumbers
    func test_6개보다_적은숫자가_입력되었을때_False() {
        // given
        let input = [1, 2, 3, 4, 5]
        
        // when
        let result = lottoMachine.isValidLottoNumber(of: input)
        
        XCTAssertFalse(result)
    }
    
    func test_6개보다_큰숫자가_입력되었을때_True() {
        let input = [1, 2, 3, 4, 5, 6, 7]
        
        let result = lottoMachine.isValidLottoNumber(of: input)
        
        
//        XCTAssertTrue(result)
//        XCTAssertFalse(result)
    }
    
    func test_6개_입력되었을때_True() {
        let input = [1, 2, 3, 4, 5, 6]
        
        let result = lottoMachine.isValidLottoNumber(of: input)
        
        
        XCTAssertTrue(result)
//        XCTAssertFalse(result)
    }
    
    func test_로또번호생성() {
        
        let result = lottoMachine.makeRandomLottoNumbersArray()
        
        print(result)
    
    }
    
    func test_winner_user() {
        
        let user = [1, 2, 3, 4, 5]
        let winner = [6, 7, 8, 9, 10]
        
        let result = try? lottoMachine.countingMatchingNumber(user: user, winner: winner) 

    
        
    }
}

