//
//  PokemonStat.swift
//  PokemonBattle
//
//  Created by Christopher Shipstone on 08/05/2026.
//

public struct PokemonStat : BitwiseCopyable, Codable, Hashable, Sendable {
    public let attack: Int
    public let defense: Int
    public let hp: Int
    public let special: Int
    public let speed: Int
    
    public init(hp: Int, attack: Int, defense: Int, special: Int, speed: Int) {
        self.attack = attack
        self.defense = defense
        self.hp = hp
        self.special = special
        self.speed = speed
    }
}
