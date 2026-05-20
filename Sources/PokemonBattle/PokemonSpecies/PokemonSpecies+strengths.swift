//
//  PokemonSpecies+strengths.swift
//  PokemonBattle
//
//  Created by Christopher Shipstone on 08/05/2026.
//

public extension PokemonSpecies {
    var strengths: PokemonStat {
        switch self {
        case .bulbasaur:
            return .init(hp: 45, attack: 49, defense: 49, special: 65, speed: 45)
        case .ivysaur:
            return .init(hp: 60, attack: 62, defense: 63, special: 80, speed: 60)
        case .venusaur:
            return .init(hp: 80, attack: 82, defense: 83, special: 100, speed: 80)
        case .charmander:
            return .init(hp: 39, attack: 52, defense: 43, special: 50, speed: 65)
        case .charmeleon:
            return .init(hp: 58, attack: 64, defense: 58, special: 65, speed: 80)
        case .charizard:
            return .init(hp: 78, attack: 84, defense: 78, special: 85, speed: 100)
        case .squirtle:
            return .init(hp: 44, attack: 48, defense: 75, special: 50, speed: 43)
        case .wartortle:
            return .init(hp: 59, attack: 63, defense: 80, special: 65, speed: 58)
        case .blastoise:
            return .init(hp: 79, attack: 83, defense: 100, special: 85, speed: 78)
        case .caterpie:
            return .init(hp: 45, attack: 30, defense: 35, special: 20, speed: 45)
        case .metapod:
            return .init(hp: 50, attack: 20, defense: 55, special: 25, speed: 30)
        case .butterfree:
            return .init(hp: 60, attack: 45, defense: 50, special: 80, speed: 70)
        case .weedle:
            return .init(hp: 40, attack: 35, defense: 30, special: 20, speed: 50)
        case .kakuna:
            return .init(hp: 45, attack: 25, defense: 50, special: 25, speed: 35)
        case .beedrill:
            return .init(hp: 65, attack: 80, defense: 40, special: 45, speed: 75)
        case .pidgey:
            return .init(hp: 40, attack: 45, defense: 40, special: 35, speed: 56)
        case .pidgeotto:
            return .init(hp: 63, attack: 60, defense: 55, special: 50, speed: 71)
        case .pidgeot:
            return .init(hp: 83, attack: 80, defense: 75, special: 70, speed: 91)
        case .rattata:
            return .init(hp: 30, attack: 56, defense: 35, special: 25, speed: 72)
        case .raticate:
            return .init(hp: 55, attack: 81, defense: 60, special: 50, speed: 97)
        case .spearow:
            return .init(hp: 40, attack: 60, defense: 30, special: 31, speed: 70)
        case .fearow:
            return .init(hp: 65, attack: 90, defense: 65, special: 61, speed: 100)
        case .ekans:
            return .init(hp: 35, attack: 60, defense: 44, special: 40, speed: 55)
        case .arbok:
            return .init(hp: 60, attack: 85, defense: 69, special: 65, speed: 80)
        case .pikachu:
            return .init(hp: 35, attack: 55, defense: 30, special: 50, speed: 90)
        case .raichu:
            return .init(hp: 60, attack: 90, defense: 55, special: 90, speed: 100)
        case .sandshrew:
            return .init(hp: 50, attack: 75, defense: 85, special: 30, speed: 40)
        case .sandslash:
            return .init(hp: 75, attack: 100, defense: 110, special: 55, speed: 65)
        case .nidoranF:
            return .init(hp: 55, attack: 47, defense: 52, special: 40, speed: 41)
        case .nidorina:
            return .init(hp: 70, attack: 62, defense: 67, special: 55, speed: 56)
        case .nidoqueen:
            return .init(hp: 90, attack: 82, defense: 87, special: 75, speed: 76)
        case .nidoranM:
            return .init(hp: 46, attack: 57, defense: 40, special: 40, speed: 50)
        case .nidorino:
            return .init(hp: 61, attack: 72, defense: 57, special: 55, speed: 65)
        case .nidoking:
            return .init(hp: 81, attack: 92, defense: 77, special: 75, speed: 85)
        case .clefairy:
            return .init(hp: 70, attack: 45, defense: 48, special: 60, speed: 35)
        case .clefable:
            return .init(hp: 95, attack: 70, defense: 73, special: 85, speed: 60)
        case .vulpix:
            return .init(hp: 38, attack: 41, defense: 40, special: 65, speed: 65)
        case .ninetails:
            return .init(hp: 73, attack: 76, defense: 75, special: 100, speed: 100)
        case .jigglypuff:
            return .init(hp: 115, attack: 45, defense: 20, special: 25, speed: 20)
        case .wigglytuff:
            return .init(hp: 140, attack: 70, defense: 45, special: 50, speed: 45)
        case .zubat:
            return .init(hp: 40, attack: 45, defense: 35, special: 40, speed: 55)
        case .golbat:
            return .init(hp: 75, attack: 80, defense: 70, special: 75, speed: 90)
        case .oddish:
            return .init(hp: 45, attack: 50, defense: 55, special: 75, speed: 30)
        case .gloom:
            return .init(hp: 60, attack: 65, defense: 70, special: 85, speed: 40)
        case .vileplume:
            return .init(hp: 75, attack: 80, defense: 85, special: 100, speed: 50)
        case .paras:
            return .init(hp: 35, attack: 70, defense: 55, special: 55, speed: 25)
        case .parasect:
            return .init(hp: 60, attack: 95, defense: 80, special: 80, speed: 30)
        case .venonat:
            return .init(hp: 60, attack: 55, defense: 50, special: 40, speed: 45)
        case .venomoth:
            return .init(hp: 70, attack: 65, defense: 60, special: 90, speed: 90)
        case .diglett:
            return .init(hp: 10, attack: 55, defense: 25, special: 45, speed: 95)
        case .dugtrio:
            return .init(hp: 35, attack: 80, defense: 50, special: 70, speed: 120)
        case .meowth:
            return .init(hp: 40, attack: 45, defense: 35, special: 40, speed: 90)
        case .persian:
            return .init(hp: 65, attack: 70, defense: 50, special: 65, speed: 115)
        case .psyduck:
            return .init(hp: 50, attack: 52, defense: 48, special: 50, speed: 55)
        case .golduck:
            return .init(hp: 80, attack: 82, defense: 78, special: 80, speed: 85)
        case .mankey:
            return .init(hp: 40, attack: 80, defense: 35, special: 35, speed: 70)
        case .primeape:
            return .init(hp: 65, attack: 105, defense: 60, special: 60, speed: 95)
        case .growlithe:
            return .init(hp: 55, attack: 70, defense: 45, special: 50, speed: 60)
        case .arcanine:
            return .init(hp: 90, attack: 110, defense: 80, special: 80, speed: 95)
        case .poliwag:
            return .init(hp: 40, attack: 50, defense: 40, special: 40, speed: 90)
        case .poliwhirl:
            return .init(hp: 65, attack: 65, defense: 65, special: 50, speed: 90)
        case .poliwrath:
            return .init(hp: 90, attack: 85, defense: 95, special: 70, speed: 70)
        case .abra:
            return .init(hp: 25, attack: 20, defense: 15, special: 105, speed: 90)
        case .kadabra:
            return .init(hp: 40, attack: 35, defense: 30, special: 120, speed: 105)
        case .alakazam:
            return .init(hp: 55, attack: 50, defense: 45, special: 135, speed: 120)
        case .machop:
            return .init(hp: 70, attack: 80, defense: 50, special: 35, speed: 35)
        case .machoke:
            return .init(hp: 80, attack: 100, defense: 70, special: 50, speed: 45)
        case .machamp:
            return .init(hp: 90, attack: 130, defense: 80, special: 65, speed: 55)
        case .bellsprout:
            return .init(hp: 50, attack: 75, defense: 35, special: 70, speed: 40)
        case .weepinbell:
            return .init(hp: 65, attack: 90, defense: 50, special: 85, speed: 55)
        case .victreebel:
            return .init(hp: 80, attack: 105, defense: 65, special: 100, speed: 70)
        case .tentacool:
            return .init(hp: 40, attack: 40, defense: 35, special: 100, speed: 70)
        case .tentacruel:
            return .init(hp: 80, attack: 70, defense: 65, special: 120, speed: 100)
        case .geodude:
            return .init(hp: 40, attack: 80, defense: 100, special: 30, speed: 20)
        case .graveler:
            return .init(hp: 55, attack: 95, defense: 115, special: 45, speed: 35)
        case .golem:
            return .init(hp: 80, attack: 110, defense: 130, special: 55, speed: 45)
        case .ponyta:
            return .init(hp: 50, attack: 85, defense: 55, special: 65, speed: 90)
        case .rapidash:
            return .init(hp: 65, attack: 100, defense: 70, special: 80, speed: 105)
        case .slowpoke:
            return .init(hp: 90, attack: 65, defense: 65, special: 40, speed: 15)
        case .slowbro:
            return .init(hp: 95, attack: 75, defense: 110, special: 80, speed: 30)
        case .magnemite:
            return .init(hp: 25, attack: 35, defense: 70, special: 95, speed: 45)
        case .magneton:
            return .init(hp: 50, attack: 60, defense: 95, special: 120, speed: 70)
        case .farfetchd:
            return .init(hp: 52, attack: 65, defense: 55, special: 58, speed: 60)
        case .doduo:
            return .init(hp: 35, attack: 85, defense: 45, special: 35, speed: 75)
        case .dodrio:
            return .init(hp: 60, attack: 110, defense: 70, special: 60, speed: 100)
        case .seel:
            return .init(hp: 65, attack: 45, defense: 55, special: 70, speed: 45)
        case .dewgong:
            return .init(hp: 90, attack: 70, defense: 80, special: 95, speed: 70)
        case .grimer:
            return .init(hp: 80, attack: 80, defense: 50, special: 40, speed: 25)
        case .muk:
            return .init(hp: 105, attack: 105, defense: 75, special: 65, speed: 50)
        case .shellder:
            return .init(hp: 30, attack: 65, defense: 100, special: 45, speed: 40)
        case .cloyster:
            return .init(hp: 50, attack: 95, defense: 180, special: 85, speed: 70)
        case .gastly:
            return .init(hp: 30, attack: 35, defense: 30, special: 100, speed: 80)
        case .haunter:
            return .init(hp: 45, attack: 50, defense: 45, special: 115, speed: 95)
        case .gengar:
            return .init(hp: 60, attack: 65, defense: 60, special: 130, speed: 110)
        case .onix:
            return .init(hp: 35, attack: 45, defense: 160, special: 30, speed: 70)
        case .drowzee:
            return .init(hp: 60, attack: 48, defense: 45, special: 90, speed: 42)
        case .hypno:
            return .init(hp: 85, attack: 73, defense: 70, special: 115, speed: 67)
        case .krabby:
            return .init(hp: 30, attack: 105, defense: 90, special: 25, speed: 50)
        case .kingler:
            return .init(hp: 55, attack: 130, defense: 115, special: 50, speed: 75)
        case .electrode:
            return .init(hp: 40, attack: 30, defense: 50, special: 55, speed: 100)
        case .voltorb:
            return .init(hp: 60, attack: 50, defense: 70, special: 80, speed: 140)
        case .exeggcute:
            return .init(hp: 60, attack: 40, defense: 80, special: 60, speed: 40)
        case .exeggutor:
            return .init(hp: 95, attack: 95, defense: 85, special: 125, speed: 55)
        case .cubone:
            return .init(hp: 50, attack: 50, defense: 95, special: 40, speed: 35)
        case .marowak:
            return .init(hp: 60, attack: 80, defense: 110, special: 50, speed: 45)
        case .hitmonlee:
            return .init(hp: 50, attack: 120, defense: 53, special: 35, speed: 87)
        case .hitmonchan:
            return .init(hp: 50, attack: 105, defense: 79, special: 35, speed: 76)
        case .lickitung:
            return .init(hp: 90, attack: 55, defense: 75, special: 60, speed: 30)
        case .koffing:
            return .init(hp: 40, attack: 65, defense: 95, special: 60, speed: 35)
        case .weezing:
            return .init(hp: 65, attack: 90, defense: 120, special: 85, speed: 60)
        case .rhyhorn:
            return .init(hp: 80, attack: 85, defense: 95, special: 30, speed: 25)
        case .rhydon:
            return .init(hp: 105, attack: 130, defense: 120, special: 45, speed: 40)
        case .chansey:
            return .init(hp: 250, attack: 5, defense: 5, special: 105, speed: 50)
        case .tangela:
            return .init(hp: 65, attack: 55, defense: 115, special: 100, speed: 60)
        case .kangaskhan:
            return .init(hp: 105, attack: 95, defense: 80, special: 40, speed: 90)
        case .horsea:
            return .init(hp: 30, attack: 40, defense: 70, special: 70, speed: 60)
        case .seadra:
            return .init(hp: 55, attack: 65, defense: 95, special: 95, speed: 85)
        case .goldeen:
            return .init(hp: 45, attack: 67, defense: 60, special: 50, speed: 63)
        case .seaking:
            return .init(hp: 80, attack: 92, defense: 65, special: 80, speed: 68)
        case .staryu:
            return .init(hp: 30, attack: 45, defense: 55, special: 70, speed: 85)
        case .starmie:
            return .init(hp: 60, attack: 75, defense: 85, special: 100, speed: 115)
        case .mrMime:
            return .init(hp: 40, attack: 45, defense: 65, special: 100, speed: 90)
        case .scyther:
            return .init(hp: 70, attack: 110, defense: 80, special: 55, speed: 105)
        case .jynx:
            return .init(hp: 65, attack: 50, defense: 35, special: 95, speed: 95)
        case .electabuzz:
            return .init(hp: 65, attack: 83, defense: 57, special: 85, speed: 105)
        case .magmar:
            return .init(hp: 65, attack: 95, defense: 57, special: 85, speed: 93)
        case .pinsir:
            return .init(hp: 65, attack: 125, defense: 100, special: 55, speed: 85)
        case .tauros:
            return .init(hp: 75, attack: 100, defense: 95, special: 70, speed: 110)
        case .magikarp:
            return .init(hp: 20, attack: 10, defense: 55, special: 20, speed: 80)
        case .gyarados:
            return .init(hp: 95, attack: 125, defense: 79, special: 100, speed: 81)
        case .lapras:
            return .init(hp: 130, attack: 85, defense: 80, special: 95, speed: 60)
        case .ditto:
            return .init(hp: 48, attack: 48, defense: 48, special: 48, speed: 48)
        case .eevee:
            return .init(hp: 55, attack: 55, defense: 50, special: 65, speed: 55)
        case .vaporeon:
            return .init(hp: 130, attack: 65, defense: 60, special: 110, speed: 65)
        case .jolteon:
            return .init(hp: 65, attack: 65, defense: 60, special: 110, speed: 130)
        case .flareon:
            return .init(hp: 65, attack: 130, defense: 60, special: 110, speed: 65)
        case .porygon:
            return .init(hp: 65, attack: 60, defense: 70, special: 75, speed: 40)
        case .omanyte:
            return .init(hp: 35, attack: 40, defense: 100, special: 90, speed: 35)
        case .omastar:
            return .init(hp: 70, attack: 60, defense: 125, special: 115, speed: 55)
        case .kabuto:
            return .init(hp: 30, attack: 80, defense: 90, special: 45, speed: 55)
        case .kabutops:
            return .init(hp: 60, attack: 115, defense: 105, special: 70, speed: 80)
        case .aerodactyl:
            return .init(hp: 80, attack: 105, defense: 65, special: 60, speed: 130)
        case .snorlax:
            return .init(hp: 160, attack: 110, defense: 65, special: 65, speed: 30)
        case .articuno:
            return .init(hp: 90, attack: 85, defense: 100, special: 125, speed: 85)
        case .zapdos:
            return .init(hp: 90, attack: 90, defense: 85, special: 125, speed: 100)
        case .moltres:
            return .init(hp: 90, attack: 100, defense: 90, special: 125, speed: 90)
        case .dratini:
            return .init(hp: 41, attack: 64, defense: 45, special: 50, speed: 50)
        case .dragonair:
            return .init(hp: 61, attack: 84, defense: 65, special: 70, speed: 70)
        case .dragonite:
            return .init(hp: 91, attack: 134, defense: 95, special: 100, speed: 80)
        case .mewtwo:
            return .init(hp: 106, attack: 110, defense: 90, special: 154, speed: 130)
        case .mew:
            return .init(hp: 100, attack: 100, defense: 100, special: 100, speed: 100)
        }
    }
}
