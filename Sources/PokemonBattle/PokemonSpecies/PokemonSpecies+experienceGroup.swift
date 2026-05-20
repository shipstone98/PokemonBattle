//
//  PokemonSpecies+experienceGroup.swift
//  PokemonBattle
//
//  Created by Christopher Shipstone on 08/05/2026.
//

public extension PokemonSpecies {
    var experienceGroup: PokemonExperienceGroup {
        switch self {
        case .bulbasaur, .ivysaur, .venusaur:
            return .mediumSlow
        case .charmander, .charmeleon, .charizard:
            return .mediumSlow
        case .squirtle, .wartortle, .blastoise:
            return .mediumSlow
        case .caterpie, .metapod, .butterfree:
            return .mediumFast
        case .weedle, .kakuna, .beedrill:
            return .mediumFast
        case .pidgey, .pidgeotto, .pidgeot:
            return .mediumSlow
        case .rattata, .raticate:
            return .mediumFast
        case .spearow, .fearow:
            return .mediumFast
        case .ekans, .arbok:
            return .mediumFast
        case .pikachu, .raichu:
            return .mediumFast
        case .sandshrew, .sandslash:
            return .mediumFast
        case .nidoranF, .nidorina, .nidoqueen:
            return .mediumSlow
        case .nidoranM, .nidorino, .nidoking:
            return .mediumSlow
        case .clefairy, .clefable:
            return .fast
        case .vulpix, .ninetails:
            return .mediumFast
        case .jigglypuff, .wigglytuff:
            return .fast
        case .zubat, .golbat:
            return .mediumFast
        case .oddish, .gloom, .vileplume:
            return .mediumSlow
        case .paras, .parasect:
            return .mediumFast
        case .venonat, .venomoth:
            return .mediumFast
        case .diglett, .dugtrio:
            return .mediumFast
        case .meowth, .persian:
            return .mediumFast
        case .psyduck, .golduck:
            return .mediumFast
        case .mankey, .primeape:
            return .mediumFast
        case .growlithe, .arcanine:
            return .slow
        case .poliwag, .poliwhirl, .poliwrath:
            return .mediumSlow
        case .abra, .kadabra, .alakazam:
            return .mediumSlow
        case .machop, .machamp, .machoke:
            return .mediumSlow
        case .bellsprout, .weepinbell, .victreebel:
            return .mediumSlow
        case .tentacool, .tentacruel:
            return .slow
        case .geodude, .graveler, .golem:
            return .mediumSlow
        case .ponyta, .rapidash:
            return .mediumFast
        case .slowpoke, .slowbro:
            return .mediumFast
        case .magnemite, .magneton:
            return .mediumFast
        case .farfetchd:
            return .mediumFast
        case .doduo, .dodrio:
            return .mediumFast
        case .seel, .dewgong:
            return .mediumFast
        case .grimer, .muk:
            return .mediumFast
        case .shellder, .cloyster:
            return .slow
        case .gastly, .haunter, .gengar:
            return .mediumSlow
        case .onix:
            return .mediumFast
        case .drowzee, .hypno:
            return .mediumFast
        case .krabby, .kingler:
            return .mediumFast
        case .electrode, .voltorb:
            return .mediumFast
        case .exeggcute, .exeggutor:
            return .slow
        case .cubone, .marowak:
            return .mediumFast
        case .hitmonlee, .hitmonchan:
            return .mediumFast
        case .lickitung:
            return .mediumFast
        case .koffing, .weezing:
            return .mediumFast
        case .rhyhorn, .rhydon:
            return .slow
        case .chansey:
            return .fast
        case .tangela:
            return .mediumFast
        case .kangaskhan:
            return .mediumFast
        case .horsea, .seadra:
            return .mediumFast
        case .goldeen, .seaking:
            return .mediumFast
        case .staryu, .starmie:
            return .slow
        case .mrMime:
            return .mediumFast
        case .scyther:
            return .mediumFast
        case .jynx:
            return .mediumFast
        case .electabuzz:
            return .mediumFast
        case .magmar:
            return .mediumFast
        case .pinsir:
            return .slow
        case .tauros:
            return .slow
        case .magikarp, .gyarados:
            return .slow
        case .lapras:
            return .slow
        case .ditto:
            return .mediumFast
        case .eevee, .vaporeon, .jolteon, .flareon:
            return .mediumFast
        case .porygon:
            return .mediumFast
        case .omanyte, .omastar:
            return .mediumFast
        case .kabuto, .kabutops:
            return .mediumFast
        case .aerodactyl:
            return .slow
        case .snorlax:
            return .slow
        case .articuno, .zapdos, .moltres:
            return .slow
        case .dratini, .dragonair, .dragonite:
            return .slow
        case .mewtwo:
            return .slow
        case .mew:
            return .mediumSlow
        }
    }
}
