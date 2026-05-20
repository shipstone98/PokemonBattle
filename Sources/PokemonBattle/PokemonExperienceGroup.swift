//
//  PokemonExperienceGroup.swift
//  PokemonBattle
//
//  Created by Christopher Shipstone on 08/05/2026.
//

public enum PokemonExperienceGroup : BitwiseCopyable, CaseIterable, Codable, Hashable, Sendable {
    case slow
    case mediumSlow
    case mediumFast
    case fast
}

internal extension PokemonExperienceGroup {
    func minimumExperience(at level: Int) -> Int {
        switch self {
        case .slow:
            return (5 * level * level * level) / 4
        case .mediumSlow:
            return (6 * level * level * level) / 5 - 15 * level * level + 100 * level - 140
        case .mediumFast:
            return level * level * level
        case .fast:
            return (4 * level * level * level) / 5
        }
    }
}
