//
//  PokemonEffectiveness.swift
//  PokemonBattle
//
//  Created by Christopher Shipstone on 08/05/2026.
//

public enum PokemonEffectiveness : BitwiseCopyable, CaseIterable, Codable, Comparable, Hashable, Sendable {
    case noEffect
    case notVeryEffective
    case normalEffectiveness
    case superEffective
}

internal extension PokemonEffectiveness {
    static let normalEffectivenessInt = 100
    
    init(_ value: Int) {
        if value == 0 {
            self = .noEffect
        } else if value < PokemonEffectiveness.normalEffectivenessInt {
            self = .notVeryEffective
        } else if value > PokemonEffectiveness.normalEffectivenessInt {
            self = .superEffective
        } else {
            self = .normalEffectiveness
        }
    }
}
