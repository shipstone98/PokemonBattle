//
//  PokemonBattle.swift
//  PokemonBattle
//
//  Created by Christopher Shipstone on 08/05/2026.
//

public struct PokemonBattle : Codable, Hashable, Sendable {
    public internal(set) var enemy: PokemonTrainer
    public internal(set) var enemyPartyIndex: PokemonTrainer.Party.Index
    internal var enemyState: State
    public internal(set) var isSwitching: Bool
    public internal(set) var player: PokemonTrainer
    public internal(set) var playerPartyIndex: PokemonTrainer.Party.Index
    internal var playerState: State
    
    public init?(for player: PokemonTrainer, against enemy: PokemonTrainer) {
        guard let playerPartyIndex = player.partyFirstIndex,
              let enemyPartyIndex = enemy.partyFirstIndex else {
            return nil
        }
        
        self.enemy = enemy
        self.enemyPartyIndex = enemyPartyIndex
        self.enemyState = .init()
        self.isSwitching = false
        self.player = player
        self.playerPartyIndex = playerPartyIndex
        self.playerState = .init()
    }
    
    internal struct State : Codable, Hashable, Sendable {
        internal let isFocused: Bool
        internal let statStageAccuracy: Int
        internal let statStageAttack: Int
        internal let statStageDefense: Int
        internal let statStageEvasion: Int
        internal let statStageSpecial: Int
        internal let statStageSpeed: Int
        
        internal init() {
            self.isFocused = false
            self.statStageAccuracy = 0
            self.statStageAttack = 0
            self.statStageDefense = 0
            self.statStageEvasion = 0
            self.statStageSpecial = 0
            self.statStageSpeed = 0
        }
    }
}
