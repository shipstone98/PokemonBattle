//
//  PokemonBattle+fightEnemy.swift
//  PokemonBattle
//
//  Created by Christopher Shipstone on 20/05/2026.
//

internal extension PokemonBattle {
    mutating func fightEnemy<T>(
        _ move: PokemonMove,
        _ moveIndex: PokemonTrainer.Pokemon.Moves.Index?,
        using generator: inout T
    ) -> (result: FightResult, isPlayerMoving: Bool) where T : RandomNumberGenerator {
        let result = self.enemyPokemon.fight(
            against: self.playerPokemon,
            move,
            using: &generator
        )
        
        if let moveIndex {
            self.enemy.party[self.enemyPartyIndex].moves[moveIndex].ppCurrent -= 1
        }
        
        let isPlayerMoving: Bool
        
        if case let .hit(damage, _, _, isKO) = result {
            if isKO {
                self.player.party[self.playerPartyIndex].hpCurrent = 0
                self.isSwitching = true
                isPlayerMoving = false
            } else {
                self.player.party[self.playerPartyIndex].hpCurrent -= damage
                isPlayerMoving = true
            }
        } else {
            isPlayerMoving = true
        }
        
        return (result, isPlayerMoving)
    }
}
