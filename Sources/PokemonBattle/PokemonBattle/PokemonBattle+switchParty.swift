//
//  PokemonBattle+switchParty.swift
//  PokemonBattle
//
//  Created by Christopher Shipstone on 20/05/2026.
//

public extension PokemonBattle {
    @discardableResult
    mutating func switchParty(to index: PokemonTrainer.Party.Index) -> Bool {
        guard !self.isComplete,
              self.isSwitching,
              self.player.party[index].hpCurrent > 0 else {
            return false
        }
        
        self.playerPartyIndex = index
        self.playerState = .init()
        self.isSwitching = false
        return true
    }
    
    @discardableResult
    mutating func switchParty<T>(
        to index: PokemonTrainer.Party.Index,
        using generator: inout T
    ) -> TurnResult? where T : RandomNumberGenerator {
        guard !(
            self.isComplete
            || self.isSwitching
            || index == self.playerPartyIndex
        ),
              self.player.party[index].hpCurrent > 0 else {
            return nil
        }
        
        self.playerPartyIndex = index
        self.playerState = .init()
        let (enemyMove, enemyMoveIndex) = self.getEnemyMoveIndex(using: &generator)
        
        let (result, _) = self.fightEnemy(
            enemyMove,
            enemyMoveIndex,
            using: &generator
        )
        
        let turnEnemy = TurnResult.Turn.fight(enemyMove, result)
        return .init(.switchParty, turnEnemy, false)
    }
}
