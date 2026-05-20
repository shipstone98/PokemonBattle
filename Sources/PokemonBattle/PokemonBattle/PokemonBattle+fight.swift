//
//  PokemonBattle+fight.swift
//  PokemonBattle
//
//  Created by Christopher Shipstone on 08/05/2026.
//

public extension PokemonBattle {
    @discardableResult
    mutating func fight<T>(
        _ moveIndex: PokemonTrainer.Pokemon.Moves.Index,
        using generator: inout T
    ) -> TurnResult? where T : RandomNumberGenerator {
        guard !(self.isComplete || self.isSwitching) else {
            return nil
        }
        
        let playerPokemon = self.playerPokemon
        let playerMoves = playerPokemon.value.moves
        let playerMove: PokemonMove
        let playerMoveIndex: PokemonTrainer.Pokemon.Moves.Index?
        
        if playerMoves[moveIndex].ppCurrent == 0 {
            let areMovesAvailable = playerMoves.contains { $0.ppCurrent > 0 }
            
            guard !areMovesAvailable else {
                return nil
            }
            
            playerMove = .struggle
            playerMoveIndex = nil
        } else {
            playerMove = playerMoves[moveIndex].value
            playerMoveIndex = moveIndex
        }
        
        let (enemyMove, enemyMoveIndex) = self.getEnemyMoveIndex(using: &generator)
        
        return self.fight(
            playerMove,
            enemyMove,
            playerMoveIndex,
            enemyMoveIndex,
            using: &generator
        )
    }
    
    private mutating func fight<T>(
        _ playerMove: PokemonMove,
        _ enemyMove: PokemonMove,
        _ playerMoveIndex: PokemonTrainer.Pokemon.Moves.Index?,
        _ enemyMoveIndex: PokemonTrainer.Pokemon.Moves.Index?,
        using generator: inout T
    ) -> TurnResult? where T : RandomNumberGenerator {
        let isEnemyFirst: Bool
        
        if playerMove.priority > enemyMove.priority {
            isEnemyFirst = false
        } else if enemyMove.priority > playerMove.priority {
            isEnemyFirst = true
        } else {
            let playerSpeed = self.playerPokemon.stats.speed
            let enemySpeed = self.enemyPokemon.stats.speed
            
            if playerSpeed > enemySpeed {
                isEnemyFirst = false
            } else if enemySpeed > playerSpeed {
                isEnemyFirst = true
            } else {
                isEnemyFirst = .random(using: &generator)
            }
        }
        
        let turnPlayer: TurnResult.Turn?
        let turnEnemy: TurnResult.Turn?
        
        if isEnemyFirst {
            let (result, isPlayerMoving) = self.fightEnemy(
                enemyMove,
                enemyMoveIndex,
                using: &generator
            )
            
            turnEnemy = .fight(enemyMove, result)
            
            if isPlayerMoving {
                let result = self.playerPokemon.fight(
                    against: self.enemyPokemon,
                    playerMove,
                    using: &generator
                )
                
                if let playerMoveIndex {
                    self.player.party[self.playerPartyIndex].moves[playerMoveIndex].ppCurrent -= 1
                }
                
                turnPlayer = .fight(playerMove, result)
                
                if case let .hit(damage, _, _, isKO) = result {
                    if isKO {
                        self.enemy.party[self.enemyPartyIndex].hpCurrent = 0
                        
                        if let enemyPartyIndex = self.enemy.partyFirstIndex {
                            self.enemyPartyIndex = enemyPartyIndex
                            self.enemyState = .init()
                        }
                    } else {
                        self.enemy.party[self.enemyPartyIndex].hpCurrent -= damage
                    }
                }
            } else {
                turnPlayer = nil
            }
        } else {
            let result = self.playerPokemon.fight(
                against: self.enemyPokemon,
                playerMove,
                using: &generator
            )
            
            if let playerMoveIndex {
                self.player.party[self.playerPartyIndex].moves[playerMoveIndex].ppCurrent -= 1
            }
            
            turnPlayer = .fight(playerMove, result)
            let isEnemyMoving: Bool
            
            if case let .hit(damage, _, _, isKO) = result {
                if isKO {
                    self.enemy.party[self.enemyPartyIndex].hpCurrent = 0
                    isEnemyMoving = false
                    
                    if let enemyPartyIndex = self.enemy.partyFirstIndex {
                        self.enemyPartyIndex = enemyPartyIndex
                        self.enemyState = .init()
                    }
                } else {
                    self.enemy.party[self.enemyPartyIndex].hpCurrent -= damage
                    isEnemyMoving = true
                }
            } else {
                isEnemyMoving = true
            }
            
            if isEnemyMoving {
                let (result, _) = self.fightEnemy(
                    enemyMove,
                    enemyMoveIndex,
                    using: &generator
                )
                
                turnEnemy = .fight(enemyMove, result)
            } else {
                turnEnemy = nil
            }
        }
        
        return .init(turnPlayer, turnEnemy, isEnemyFirst)
    }
}
