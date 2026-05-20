//
//  PokemonMove+Category.swift
//  PokemonBattle
//
//  Created by Christopher Shipstone on 08/05/2026.
//

public extension PokemonMove {
    var category: Category {
        switch self {
        case .pound:
            return .damaging(power: 40)
        case .karateChop:
            return .damaging(power: 50)
        case .doubleSlap:
            return .damaging(power: 15)
        case .cometPunch:
            return .damaging(power: 18)
        case .megaPunch:
            return .damaging(power: 80)
        case .payDay:
            return .damaging(power: 40)
        case .firePunch, .icePunch, .thunderPunch:
            return .damaging(power: 75)
        case .scratch:
            return .damaging(power: 40)
        case .viceGrip:
            return .damaging(power: 55)
        case .guillotine:
            return .damaging(isOneHitKO: true)
        case .razorWind:
            return .damaging(power: 80)
        case .swordsDance:
            return .status
        case .cut:
            return .damaging(power: 50)
        case .gust:
            return .damaging(power: 40)
        case .wingAttack:
            return .damaging(power: 35)
        case .whirlwind:
            return .status
        case .fly:
            return .damaging(power: 70)
        case .bind:
            return .damaging(power: 15)
        case .slam:
            return .damaging(power: 80)
        case .vineWhip:
            return .damaging(power: 35)
        case .stomp:
            return .damaging(power: 65)
        case .doubleKick:
            return .damaging(power: 30)
        case .megaKick:
            return .damaging(power: 120)
        case .jumpKick:
            return .damaging(power: 70)
        case .rollingKick:
            return .damaging(power: 60)
        case .sandAttack:
            return .status
        case .headbutt:
            return .damaging(power: 70)
        case .hornAttack:
            return .damaging(power: 65)
        case .furyAttack:
            return .damaging(power: 15)
        case .hornDrill:
            return .damaging(isOneHitKO: true)
        case .tackle:
            return .damaging(power: 35)
        case .bodySlam:
            return .damaging(power: 85)
        case .wrap:
            return .damaging(power: 15)
        case .takeDown:
            return .damaging(power: 90)
        case .thrash:
            return .damaging(power: 90)
        case .doubleEdge:
            return .damaging(power: 100)
        case .tailWhip:
            return .status
        case .poisonSting:
            return .status
        case .twineedle:
            return .damaging(power: 25)
        case .pinMissile:
            return .damaging(power: 14)
        case .leer:
            return .status
        case .bite:
            return .damaging(power: 60)
        case .growl:
            return .status
        case .roar:
            return .status
        case .sing:
            return .status
        case .supersonic:
            return .status
        case .sonicBoom:
            return .damaging(power: 20, isDamageDirect: true)
        case .disable:
            return .status
        case .acid:
            return .damaging(power: 40)
        case .ember:
            return .damaging(power: 40)
        case .flamethrower:
            return .damaging(power: 90)
        case .mist:
            return .status
        case .waterGun:
            return .damaging(power: 40)
        case .hydroPump:
            return .damaging(power: 120)
        case .surf:
            return .damaging(power: 95)
        case .iceBeam:
            return .damaging(power: 95)
        case .blizzard:
            return .damaging(power: 120)
        case .psybeam, .bubbleBeam, .auroraBeam:
            return .damaging(power: 65)
        case .hyperBeam:
            return .damaging(power: 150)
        case .peck:
            return .damaging(power: 35)
        case .drillPeck:
            return .damaging(power: 80)
        case .submission:
            return .damaging(power: 80)
        case .lowKick:
            return .damaging(power: 50)
        case .counter:
            return .damaging()
        case .seismicToss:
            return .damaging()
        case .strength:
            return .damaging(power: 80)
        case .absorb:
            return .damaging(power: 20)
        case .megaDrain:
            return .damaging(power: 40)
        case .leechSeed:
            return .status
        case .growth:
            return .status
        case .razorLeaf:
            return .damaging(power: 55)
        case .solarBeam:
            return .damaging(power: 120)
        case .poisonPowder:
            return .status
        case .stunSpore:
            return .status
        case .sleepPowder:
            return .status
        case .petalDance:
            return .damaging(power: 70)
        case .stringShot:
            return .status
        case .dragonRage:
            return .damaging(power: 40, isDamageDirect: true)
        case .fireSpin:
            return .damaging(power: 15)
        case .thunderShock:
            return .damaging(power: 40)
        case .thunderbolt:
            return .damaging(power: 95)
        case .thunderWave:
            return .status
        case .thunder:
            return .damaging(power: 120)
        case .rockThrow:
            return .damaging(power: 50)
        case .earthquake:
            return .damaging(power: 100)
        case .fissure:
            return .damaging(isOneHitKO: true)
        case .dig:
            return .damaging(power: 100)
        case .toxic:
            return .status
        case .confusion:
            return .damaging(power: 50)
        case .psychic:
            return .damaging(power: 90)
        case .hypnosis:
            return .status
        case .meditate:
            return .status
        case .agility:
            return .status
        case .quickAttack:
            return .damaging(power: 40)
        case .rage:
            return .damaging(power: 20)
        case .teleport:
            return .status
        case .nightShade:
            return .damaging()
        case .mimic:
            return .status
        case .screech:
            return .status
        case .doubleTeam:
            return .status
        case .recover:
            return .status
        case .harden:
            return .status
        case .minimize:
            return .status
        case .smokescreen:
            return .status
        case .confuseRay:
            return .status
        case .withdraw:
            return .status
        case .defenseCurl:
            return .status
        case .barrier:
            return .status
        case .lightScreen:
            return .status
        case .haze:
            return .status
        case .reflect:
            return .status
        case .focusEnergy:
            return .status
        case .bide:
            return .damaging()
        case .metronome:
            return .status
        case .mirrorMove:
            return .status
        case .selfDestruct:
            return .damaging(power: 130, isSuicide: true)
        case .eggBomb:
            return .damaging(power: 100)
        case .lick:
            return .damaging(power: 20)
        case .smog:
            return .damaging(power: 20)
        case .sludge:
            return .damaging(power: 65)
        case .boneClub:
            return .damaging(power: 65)
        case .fireBlast:
            return .damaging(power: 120)
        case .waterfall:
            return .damaging(power: 80)
        case .clamp:
            return .damaging(power: 35)
        case .swift:
            return .damaging(power: 60)
        case .skullBash:
            return .damaging(power: 100)
        case .spikeCannon:
            return .damaging(power: 20)
        case .constrict:
            return .damaging(power: 10)
        case .amnesia:
            return .status
        case .kinesis:
            return .status
        case .softBoiled:
            return .status
        case .hiJumpKick:
            return .damaging(power: 85)
        case .glare:
            return .status
        case .dreamEater:
            return .damaging(power: 100)
        case .poisonGas:
            return .status
        case .barrage:
            return .damaging(power: 15)
        case .leechLife:
            return .damaging(power: 20)
        case .lovelyKiss:
            return .status
        case .skyAttack:
            return .damaging(power: 140)
        case .transform:
            return .status
        case .bubble:
            return .damaging(power: 20)
        case .dizzyPunch:
            return .damaging(power: 70)
        case .spore:
            return .status
        case .flash:
            return .status
        case .psywave:
            return .damaging()
        case .splash:
            return .status
        case .acidArmor:
            return .status
        case .crabhammer:
            return .damaging(power: 90)
        case .explosion:
            return .damaging(power: 170, isSuicide: true)
        case .furySwipes:
            return .damaging(power: 18)
        case .bonemerang:
            return .damaging(power: 50)
        case .rest:
            return .status
        case .rockSlide:
            return .damaging(power: 75)
        case .hyperFang:
            return .damaging(power: 80)
        case .sharpen:
            return .status
        case .conversion:
            return .status
        case .triAttack:
            return .damaging(power: 80)
        case .superFang:
            return .damaging()
        case .slash:
            return .damaging(power: 70)
        case .substitute:
            return .status
        case .struggle:
            return .damaging(power: 50)
        }
    }
    
    enum Category : BitwiseCopyable, Codable, Hashable, Sendable {
        case damaging(
            power: Int? = nil,
            isDamageDirect: Bool = false,
            isOneHitKO: Bool = false,
            isSuicide: Bool = false
        )
        
        case status
    }
}
