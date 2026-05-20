//
//  PokemonTrainer+Pokemon+stats.swift
//  PokemonBattle
//
//  Created by Christopher Shipstone on 08/05/2026.
//

public extension PokemonTrainer.Pokemon {
    var stats: PokemonStat {
        let hp = calculateHP(
            speciesStrength: self.species.strengths.hp,
            basePoint: self.basePoints.hp,
            individualStrength: self.individualStrengths.hp,
            at: self.level
        )
        
        let attack = calculateStat(
            speciesStrength: self.species.strengths.attack,
            basePoint: self.basePoints.attack,
            individualStrength: self.individualStrengths.attack,
            at: self.level
        )
        
        let defense = calculateStat(
            speciesStrength: self.species.strengths.defense,
            basePoint: self.basePoints.defense,
            individualStrength: self.individualStrengths.defense,
            at: self.level
        )
        
        let special = calculateStat(
            speciesStrength: self.species.strengths.special,
            basePoint: self.basePoints.special,
            individualStrength: self.individualStrengths.special,
            at: self.level
        )
        
        let speed = calculateStat(
            speciesStrength: self.species.strengths.speed,
            basePoint: self.basePoints.speed,
            individualStrength: self.individualStrengths.speed,
            at: self.level
        )
        
        return .init(
            hp: hp,
            attack: attack,
            defense: defense,
            special: special,
            speed: speed
        )
    }
}
