//
//  PokemonTrainer.swift
//  PokemonBattle
//
//  Created by Christopher Shipstone on 08/05/2026.
//

public struct PokemonTrainer : Codable, Hashable, Sendable {
    public typealias Party = [Pokemon]
    
    public internal(set) var party: Party
    
    public init() {
        self.party = []
    }
    
    public struct Pokemon : Codable, Hashable, Sendable {
        public typealias Moves = [Move]
        
        public let basePoints: PokemonStat
        public let experience: Int
        public internal(set) var hpCurrent: Int
        public let individualStrengths: PokemonStat
        public internal(set) var moves: Moves
        public let species: PokemonSpecies
        
        public init(
            _ species: PokemonSpecies,
            basePoints: PokemonStat,
            individualStrengths: PokemonStat,
            experience: Int,
            hpCurrent: Int
        ) {
            self.basePoints = basePoints
            self.experience = experience
            self.hpCurrent = hpCurrent
            self.individualStrengths = individualStrengths
            self.moves = []
            self.species = species
        }
        
        public struct Move : BitwiseCopyable, Codable, Hashable, Sendable {
            public internal(set) var ppCurrent: Int
            public let value: PokemonMove
            
            public init(_ value: PokemonMove, ppCurrent: Int) {
                self.ppCurrent = ppCurrent
                self.value = value
            }
        }
    }
}
