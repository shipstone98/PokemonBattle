//
//  PokemonMove+Extensions.swift
//  PokemonBattle
//
//  Created by Christopher Shipstone on 08/05/2026.
//

public extension PokemonMove {
    var isCriticalHitRatioHigh: Bool {
        self == .karateChop || self == .razorLeaf || self == .crabhammer || self == .slash
    }
    
    var isEffectivenessBypassed: Bool {
        self == .sandAttack || self == .sonicBoom || self == .seismicToss
    }
    
    var isSpecial: Bool {
        switch self.type {
        case .fire, .water, .grass, .electric, .psychic, .ice, .dragon:
            return true
        case .normal, .fighting, .flying, .poison, .ground, .rock, .bug, .ghost:
            return false
        }
    }
    
    var priority: Int {
        switch self {
        case .quickAttack:
            return 1
        case .counter:
            return -1
        default:
            return 0
        }
    }
}
