//
//  PokemonBattle+Pokemon.swift
//  PokemonBattle
//
//  Created by Christopher Shipstone on 08/05/2026.
//

internal extension PokemonBattle {
    struct Pokemon {
        internal let state: State
        internal let value: PokemonTrainer.Pokemon
        
        internal init(_ value: PokemonTrainer.Pokemon, at state: State) {
            self.state = state
            self.value = value
        }
    }
}

internal extension PokemonBattle.Pokemon {
    var accuracy: Int {
        calculateStagedStat(100, at: self.state.statStageAccuracy)
    }
    
    var evasion: Int {
        calculateStagedStat(100, at: self.state.statStageEvasion)
    }
    
    var stats: PokemonStat {
        let attack = calculateStagedStat(
            self.value.stats.attack,
            at: self.state.statStageAttack
        )
        
        let defense = calculateStagedStat(
            self.value.stats.defense,
            at: self.state.statStageDefense
        )
        
        let special = calculateStagedStat(
            self.value.stats.special,
            at: self.state.statStageSpecial
        )
        
        let speed = calculateStagedStat(
            self.value.stats.defense,
            at: self.state.statStageSpeed
        )
        
        return .init(
            hp: self.value.hpCurrent,
            attack: attack,
            defense: defense,
            special: special,
            speed: speed
        )
    }
}
