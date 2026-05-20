//
//  BinaryInteger.swift
//  PokemonBattle
//
//  Created by Christopher Shipstone on 20/05/2026.
//

import Foundation

public extension BinaryInteger {
    func squareRooted(isCeiling: Bool = false) -> Self {
        let selfDouble = Double(self)
        var selfSqrt = sqrt(selfDouble)
        
        if isCeiling {
            selfSqrt = ceil(selfSqrt)
        } else {
            selfSqrt = floor(selfSqrt)
        }
        
        return .init(selfSqrt)
    }
}
