//
//  PokemonType+effectiveness.swift
//  PokemonBattle
//
//  Created by Christopher Shipstone on 08/05/2026.
//

internal extension PokemonType {
    func effectiveness(against type: PokemonType) -> Int {
        let normalEffectiveness = PokemonEffectiveness.normalEffectivenessInt.squareRooted()
        let notVeryEffective = normalEffectiveness / 2
        let superEffective = normalEffectiveness * 2
        
        switch self {
        case .normal:
            switch type {
            case .ghost:
                return 0
            case .rock:
                return notVeryEffective
            default:
                return normalEffectiveness
            }
            
        case .fighting:
            switch type {
            case .ghost:
                return 0
            case .flying, .poison, .bug, .psychic:
                return notVeryEffective
            case .normal, .rock, .ice:
                return superEffective
            default:
                return normalEffectiveness
            }
            
        case .flying:
            switch type {
            case .rock, .electric:
                return notVeryEffective
            case .fighting, .bug, .grass:
                return superEffective
            default:
                return normalEffectiveness
            }
            
        case .poison:
            switch type {
            case .poison, .ground, .rock, .ghost:
                return notVeryEffective
            case .bug, .grass:
                return superEffective
            default:
                return normalEffectiveness
            }
            
        case .ground:
            switch type {
            case .flying:
                return 0
            case .bug, .grass:
                return notVeryEffective
            case .poison, .rock, .fire, .electric:
                return superEffective
            default:
                return normalEffectiveness
            }
            
        case .rock:
            switch type {
            case .fighting, .ground:
                return notVeryEffective
            case .flying, .bug, .fire, .ice:
                return superEffective
            default:
                return normalEffectiveness
            }
            
        case .bug:
            switch type {
            case .fighting, .flying, .ghost, .fire:
                return notVeryEffective
            case .poison, .grass, .psychic:
                return superEffective
            default:
                return normalEffectiveness
            }
            
        case .ghost:
            switch type {
            case .normal, .psychic:
                return 0
            case .ghost:
                return superEffective
            default:
                return normalEffectiveness
            }
            
        case .fire:
            switch type {
            case .rock, .fire, .water, .dragon:
                return notVeryEffective
            case .bug, .grass, .ice:
                return superEffective
            default:
                return normalEffectiveness
            }
            
        case .water:
            switch type {
            case .water, .grass, .dragon:
                return notVeryEffective
            case .ground, .rock, .fire:
                return superEffective
            default:
                return normalEffectiveness
            }
            
        case .grass:
            switch type {
            case .flying, .poison, .bug, .fire, .grass, .dragon:
                return notVeryEffective
            case .ground, .rock, .water:
                return superEffective
            default:
                return normalEffectiveness
            }
            
        case .electric:
            switch type {
            case .ground:
                return 0
            case .grass, .electric, .dragon:
                return notVeryEffective
            case .flying, .water:
                return superEffective
            default:
                return normalEffectiveness
            }
            
        case .psychic:
            switch type {
            case .psychic:
                return notVeryEffective
            case .fire, .poison:
                return superEffective
            default:
                return normalEffectiveness
            }
            
        case .ice:
            switch type {
            case .water, .ice:
                return notVeryEffective
            case .flying, .ground, .grass, .dragon:
                return superEffective
            default:
                return normalEffectiveness
            }
            
        case .dragon:
            return type == .dragon ? superEffective : normalEffectiveness
        }
    }
}
