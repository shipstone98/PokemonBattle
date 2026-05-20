//
//  PokemonBattle+Pokemon+fight.swift
//  PokemonBattle
//
//  Created by Christopher Shipstone on 08/05/2026.
//

import Utilities

internal extension PokemonBattle.Pokemon {
    func fight<T>(
        against defender: PokemonBattle.Pokemon,
        _ move: PokemonMove,
        using generator: inout T
    ) -> PokemonBattle.FightResult where T : RandomNumberGenerator {
        let types: Int
        
        if move.isEffectivenessBypassed {
            types = PokemonEffectiveness.normalEffectivenessInt
        } else {
            let type1 = move.type.effectiveness(against: defender.value.species.typePrimary)
            let type2: Int
            
            if let typeSecondary = defender.value.species.typeSecondary {
                type2 = move.type.effectiveness(against: typeSecondary)
            } else {
                type2 = 10
            }
            
            types = type1 * type2
            
            guard types > 0 else {
                return .noEffect
            }
        }
        
        if let moveAccuracy = move.accuracy {
            let accuracy = moveAccuracy * self.accuracy * defender.evasion
            
            guard .random(in: 0..<256, using: &generator) < accuracy else {
                return .miss
            }
        }
        
        let damageNormalized: Int
        let isCriticalHit: Bool
        
        if case let .damaging(power, isDamageDirect, isOneHitKO, _) = move.category {
            if isOneHitKO {
                damageNormalized = min(65_535, defender.value.hpCurrent)
                isCriticalHit = false
            } else {
                guard let power else {
                    return .failure
                }
                
                if isDamageDirect {
                    damageNormalized = min(power, defender.value.hpCurrent)
                    isCriticalHit = false
                } else {
                    let speed = self.value.species.strengths.speed
                    let threshold: Int
                    
                    if self.state.isFocused {
                        if move.isCriticalHitRatioHigh {
                            threshold = 4 * speed / 4
                        } else {
                            threshold = speed / 8
                        }
                    } else if move.isCriticalHitRatioHigh {
                        threshold = min(8 * speed / 2, 255)
                    } else {
                        threshold = speed / 2
                    }
                    
                    isCriticalHit = .random(in: 0..<256, using: &generator) < threshold
                    let critical = isCriticalHit ? 2 : 1
                    let attack: Int
                    let defense: Int
                    
                    if move.isSpecial {
                        attack = self.stats.special
                        defense = defender.stats.special
                    } else {
                        attack = self.stats.attack
                        defense = defender.stats.defense
                    }
                    
                    let stab = move.type == self.value.species.typePrimary || move.type == self.value.species.typeSecondary ? 3 : 2
                    let random = Int.random(in: 217..<256, using: &generator)
                    let damage = (((((((2 * self.value.level * critical) / 5) + 2) * power * attack) / (50 * defense)) + 2) * stab * types * random) / 51_000
                    damageNormalized = damage.clamped(1, defender.value.hpCurrent)
                }
            }
        } else {
            return .failure
        }
        
        let effectiveness = PokemonEffectiveness(types)
        
        return .hit(
            damage: damageNormalized,
            effectiveness: effectiveness,
            isCritical: isCriticalHit,
            isKO: damageNormalized == defender.value.hpCurrent
        )
    }
}
