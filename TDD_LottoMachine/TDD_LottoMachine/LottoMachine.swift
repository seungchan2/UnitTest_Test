//
//  LottoMachine.swift
//  TDD_LottoMachine
//
//  Created by 김승찬 on 2022/10/03.
//

import Foundation

struct LottoMachine {
    func isValidLottoNumber(of numbers: [Int]) -> Bool {
        guard numbers.count == 6, Set(numbers).count == 6 else {
            return false
        }
        
        for num in numbers {
            guard 1...45 ~= num else {
                return false
            }
        }
        
        return true
    }
    
    func makeRandomLottoNumbersArray() -> [Int] {
        var numberSet: Set<Int> = []
        
        while numberSet.count < 6 {
            let randomNumber = Int.random(in: 1...45)
            numberSet.insert(randomNumber)
        }
        
        return Array(numberSet)
    }
    
    func countingMatchingNumber(user: [Int], winner: [Int]) throws -> Int {
        guard isValidLottoNumber(of: user) && isValidLottoNumber(of: winner) else {
            throw LottoMachineError.invalidNumbers
        }
        
        let winNumbers = user.filter { winner.contains($0) }
        return winNumbers.count
    }
}

enum LottoMachineError: Error {
    case invalidNumbers
}

