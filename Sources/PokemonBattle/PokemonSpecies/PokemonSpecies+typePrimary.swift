//
//  PokemonSpecies+typePrimary.swift
//  PokemonBattle
//
//  Created by Christopher Shipstone on 08/05/2026.
//

public extension PokemonSpecies {
    var typePrimary: PokemonType {
        switch self {
        case .bulbasaur, .ivysaur, .venusaur:
            return .grass
        case .charmander, .charmeleon, .charizard:
            return .fire
        case .squirtle, .wartortle, .blastoise:
            return .water
        case .caterpie, .metapod, .butterfree:
            return .bug
        case .weedle, .kakuna, .beedrill:
            return .bug
        case .pidgey, .pidgeotto, .pidgeot:
            return .normal
        case .rattata, .raticate:
            return .normal
        case .spearow, .fearow:
            return .normal
        case .ekans, .arbok:
            return .poison
        case .pikachu, .raichu:
            return .electric
        case .sandshrew, .sandslash:
            return .ground
        case .nidoranF, .nidorina, .nidoqueen:
            return .poison
        case .nidoranM, .nidorino, .nidoking:
            return .poison
        case .clefairy, .clefable:
            return .normal
        case .vulpix, .ninetails:
            return .fire
        case .jigglypuff, .wigglytuff:
            return .normal
        case .zubat, .golbat:
            return .poison
        case .oddish, .gloom, .vileplume:
            return .grass
        case .paras, .parasect:
            return .bug
        case .venonat, .venomoth:
            return .bug
        case .diglett, .dugtrio:
            return .ground
        case .meowth, .persian:
            return .normal
        case .psyduck, .golduck:
            return .water
        case .mankey, .primeape:
            return .fighting
        case .growlithe, .arcanine:
            return .fire
        case .poliwag, .poliwhirl, .poliwrath:
            return .water
        case .abra, .kadabra, .alakazam:
            return .psychic
        case .machop, .machoke, .machamp:
            return .fighting
        case .bellsprout, .weepinbell, .victreebel:
            return .grass
        case .tentacool, .tentacruel:
            return .water
        case .geodude, .graveler, .golem:
            return .rock
        case .ponyta, .rapidash:
            return .fire
        case .slowpoke, .slowbro:
            return .water
        case .magnemite, .magneton:
            return .electric
        case .farfetchd:
            return .normal
        case .doduo, .dodrio:
            return .normal
        case .seel, .dewgong:
            return .water
        case .grimer, .muk:
            return .poison
        case .shellder, .cloyster:
            return .water
        case .gastly, .haunter, .gengar:
            return .ghost
        case .onix:
            return .rock
        case .drowzee, .hypno:
            return .psychic
        case .krabby, .kingler:
            return .water
        case .voltorb, .electrode:
            return .electric
        case .exeggcute, .exeggutor:
            return .grass
        case .cubone, .marowak:
            return .ground
        case .hitmonlee, .hitmonchan:
            return .fighting
        case .lickitung:
            return .normal
        case .koffing, .weezing:
            return .poison
        case .rhyhorn, .rhydon:
            return .ground
        case .chansey:
            return .normal
        case .tangela:
            return .grass
        case .kangaskhan:
            return .normal
        case .horsea, .seadra:
            return .water
        case .goldeen, .seaking:
            return .water
        case .staryu, .starmie:
            return .water
        case .mrMime:
            return .psychic
        case .scyther:
            return .bug
        case .jynx:
            return .ice
        case .electabuzz:
            return .electric
        case .magmar:
            return .fire
        case .pinsir:
            return .bug
        case .tauros:
            return .normal
        case .magikarp, .gyarados:
            return .water
        case .lapras:
            return .water
        case .ditto:
            return .normal
        case .eevee:
            return .normal
        case .vaporeon:
            return .water
        case .jolteon:
            return .electric
        case .flareon:
            return .fire
        case .porygon:
            return .normal
        case .omanyte, .omastar:
            return .rock
        case .kabuto, .kabutops:
            return .rock
        case .aerodactyl:
            return .rock
        case .snorlax:
            return .normal
        case .articuno:
            return .ice
        case .zapdos:
            return .electric
        case .moltres:
            return .fire
        case .dratini, .dragonair, .dragonite:
            return .dragon
        case .mewtwo:
            return .psychic
        case .mew:
            return .psychic
        }
    }
}
