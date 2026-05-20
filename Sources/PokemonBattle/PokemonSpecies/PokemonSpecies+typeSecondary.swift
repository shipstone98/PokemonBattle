//
//  PokemonSpecies+typeSecondary.swift
//  PokemonBattle
//
//  Created by Christopher Shipstone on 08/05/2026.
//

public extension PokemonSpecies {
    var typeSecondary: PokemonType? {
        switch self {
        case .bulbasaur, .ivysaur, .venusaur:
            return .poison
        case .charizard:
            return .flying
        case .butterfree:
            return .flying
        case .weedle, .kakuna, .beedrill:
            return .poison
        case .pidgey, .pidgeotto, .pidgeot:
            return .flying
        case .spearow, .fearow:
            return .flying
        case .nidoqueen:
            return .ground
        case .nidoking:
            return .ground
        case .zubat, .golbat:
            return .flying
        case .oddish, .gloom, .vileplume:
            return .poison
        case .paras, .parasect:
            return .grass
        case .venonat, .venomoth:
            return .poison
        case .poliwrath:
            return .fighting
        case .bellsprout, .weepinbell, .victreebel:
            return .poison
        case .tentacool, .tentacruel:
            return .poison
        case .geodude, .graveler, .golem:
            return .ground
        case .slowpoke, .slowbro:
            return .psychic
        case .farfetchd:
            return .flying
        case .doduo, .dodrio:
            return .flying
        case .dewgong:
            return .ice
        case .cloyster:
            return .ice
        case .gastly, .haunter, .gengar:
            return .poison
        case .onix:
            return .ground
        case .exeggcute, .exeggutor:
            return .psychic
        case .rhyhorn, .rhydon:
            return .rock
        case .starmie:
            return .psychic
        case .scyther:
            return .flying
        case .jynx:
            return .psychic
        case .gyarados:
            return .flying
        case .lapras:
            return .ice
        case .omanyte, .omastar:
            return .water
        case .kabuto, .kabutops:
            return .water
        case .aerodactyl:
            return .flying
        case .articuno, .zapdos, .moltres:
            return .flying
        case .dragonite:
            return .flying
        default:
            return nil
        }
    }
}
