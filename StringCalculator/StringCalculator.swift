//
//  Globals.swift
//  StringCalculator
//
//  Created by Sanchez, Vladimir on 15/01/2020.
//  Copyright © 2020 Sanchez, Vladimir. All rights reserved.
//

import Foundation



class StringCalculator {
    
    func add(numbers: String) throws -> Int  {
        guard !numbers.isEmpty else { return 0 }
        let list = numbers.components(separatedBy: CharacterSet(arrayLiteral: ",","\n"))
            .compactMap({ return Int($0) })
        
        guard list.filter({ $0 < 0 }).isEmpty else {
            throw NSError(domain: "Not Allow Negative Number ", code: -1, userInfo: nil)
        }
        return list.reduce(0,+)
    }
}








