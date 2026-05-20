//
//  PokemonBattle+Extensions.swift
//  PokemonBattle
//
//  Created by Christopher Shipstone on 08/05/2026.
//

public extension PokemonBattle {
    var isComplete: Bool {
        let closure: (PokemonTrainer) -> Bool = {
            $0.party.allSatisfy { $0.hpCurrent == 0 }
        }
        
        return closure(self.player) || closure(self.enemy)
    }
    
    enum FightResult : BitwiseCopyable, Codable, Hashable, Sendable {
        case failure
        case noEffect
        case miss
        case hit(
            damage: Int,
            effectiveness: PokemonEffectiveness,
            isCritical: Bool,
            isKO: Bool
        )
    }
    
    struct TurnResult : BitwiseCopyable, Codable, Hashable, Sendable {
        public let isEnemyFirst: Bool
        public let turnEnemy: Turn?
        public let turnPlayer: Turn?
        
        internal init(
            _ turnPlayer: Turn?,
            _ turnEnemy: Turn?,
            _ isEnemyFirst: Bool
        ) {
            self.isEnemyFirst = isEnemyFirst
            self.turnEnemy = turnEnemy
            self.turnPlayer = turnPlayer
        }
        
        public enum Turn : BitwiseCopyable, Codable, Hashable, Sendable {
            case fight(_ move: PokemonMove, _ result: FightResult)
            case switchParty
        }
    }
}

internal extension PokemonBattle {
    var enemyPokemon: Pokemon {
        .init(self.enemy.party[self.enemyPartyIndex], at: self.enemyState)
    }
    
    var playerPokemon: Pokemon {
        .init(self.player.party[self.playerPartyIndex], at: self.playerState)
    }
    
    func getEnemyMoveIndex<T>(using generator: inout T) -> (
        move: PokemonMove,
        moveIndex: PokemonTrainer.Pokemon.Moves.Index?
    ) where T : RandomNumberGenerator {
        let enemyPokemon = self.enemyPokemon
        let enemyMoves = enemyPokemon.value.moves
        
        let enemyMoveIndex = enemyMoves.indices.filter {
            enemyMoves[$0].ppCurrent > 0
        }
            .randomElement(using: &generator)
        
        let enemyMove: PokemonMove
        
        if let enemyMoveIndex {
            enemyMove = enemyMoves[enemyMoveIndex].value
        } else {
            enemyMove = .struggle
        }
        
        return (enemyMove, enemyMoveIndex)
    }
}
