//
//  StringValid.swift
//  TDD_LottoMachine
//
//  Created by 김승찬 on 2022/10/08.
//

import Foundation

struct isValid {
    func isValidPhoneNumber(phoneNumber: String) -> Bool {
        let regex = "^01[0-1, 7][0-9]{7,8}$"
//        _ = NSPredicate(format: "SELF MATCHES %@", regex)
//        let isValid = predicate.evaluate(with: self)
        return NSPredicate(format: "SELF MATCHES %@", regex).evaluate(with: phoneNumber)
    }
    
    func isValidEmail(email: String) -> Bool {
        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format:"SELF MATCHES %@", regex)
        let isValid = predicate.evaluate(with: self)
        return isValid ? true : false
    }
    
    func isValidPassword() -> Bool {
        let regex = "^(?=.*[A-Za-z])(?=.*[0-9])(?=.*[!@#$%^&*()_+=-]).{8,50}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        let isValid = predicate.evaluate(with: self)
        return isValid ? true : false
    }
}
