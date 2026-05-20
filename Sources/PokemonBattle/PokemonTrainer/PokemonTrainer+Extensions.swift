//
//  PokemonTrainer+Extensions.swift
//  PokemonBattle
//
//  Created by Christopher Shipstone on 08/05/2026.
//

public extension PokemonTrainer {
    static let partyMaxCount = 6
    
    @discardableResult
    mutating func appendParty(_ newPokemon: Pokemon) -> Bool {
        guard self.party.count < PokemonTrainer.partyMaxCount else {
            return false
        }
        
        self.party.append(newPokemon)
        return true
    }
}

internal extension PokemonTrainer {
    var partyFirstIndex: Party.Index? {
        self.party.firstIndex { $0.hpCurrent > 0 }
    }
}

public extension PokemonTrainer.Pokemon {
    static let levelMax = 100
    static let moveMaxCount = 4
    
    var level: Int {
        for level in 2..<PokemonTrainer.Pokemon.levelMax {
            let minimumExperience = self.species.experienceGroup.minimumExperience(at: level + 1)
            
            guard minimumExperience <= self.experience else {
                return level
            }
        }
        
        return PokemonTrainer.Pokemon.levelMax
    }
    
    @discardableResult
    mutating func appendMove(_ newMove: PokemonMove) -> Bool {
        guard self.moves.count < PokemonTrainer.Pokemon.moveMaxCount,
              newMove != .struggle else {
            return false
        }
        
        let isLearned = self.moves.contains { $0.value == newMove }
        
        guard !isLearned else {
            return false
        }
        
        let move = Move(newMove, ppCurrent: newMove.pp)
        self.moves.append(move)
        return true
    }
}
