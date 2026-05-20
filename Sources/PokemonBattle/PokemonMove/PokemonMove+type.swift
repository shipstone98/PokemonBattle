//
//  PokemonMove+type.swift
//  PokemonBattle
//
//  Created by Christopher Shipstone on 08/05/2026.
//

public extension PokemonMove {
    var type: PokemonType {
        switch self {
        case .pound, .karateChop, .doubleSlap, .cometPunch, .megaPunch, .payDay:
            return .normal
        case .firePunch:
            return .fire
        case .icePunch:
            return .ice
        case .thunderPunch:
            return .electric
        case .scratch, .viceGrip, .guillotine, .razorWind, .swordsDance, .cut, .gust:
            return .normal
        case .wingAttack:
            return .flying
        case .whirlwind:
            return .normal
        case .fly:
            return .flying
        case .bind, .slam:
            return .normal
        case .vineWhip:
            return .grass
        case .stomp:
            return .normal
        case .doubleKick:
            return .fighting
        case .megaKick:
            return .normal
        case .jumpKick, .rollingKick:
            return .fighting
        case .sandAttack:
            return .ground
        case .headbutt, .hornAttack, .furyAttack, .hornDrill, .tackle, .bodySlam, .wrap, .takeDown, .thrash, .doubleEdge, .tailWhip:
            return .normal
        case .poisonSting:
            return .poison
        case .twineedle, .pinMissile:
            return .bug
        case .leer, .bite, .growl, .roar, .sing, .supersonic, .sonicBoom, .disable:
            return .normal
        case .acid:
            return .poison
        case .ember, .flamethrower:
            return .fire
        case .mist:
            return .ice
        case .waterGun, .hydroPump, .surf:
            return .water
        case .iceBeam, .blizzard:
            return .ice
        case .psybeam:
            return .psychic
        case .bubbleBeam:
            return .water
        case .auroraBeam:
            return .ice
        case .hyperBeam:
            return .normal
        case .peck, .drillPeck:
            return .flying
        case .submission, .lowKick, .counter, .seismicToss:
            return .fighting
        case .strength:
            return .normal
        case .absorb, .megaDrain, .leechSeed:
            return .grass
        case .growth:
            return .normal
        case .razorLeaf, .solarBeam:
            return .grass
        case .poisonPowder:
            return .poison
        case .stunSpore, .sleepPowder, .petalDance:
            return .grass
        case .stringShot:
            return .bug
        case .dragonRage:
            return .dragon
        case .fireSpin:
            return .fire
        case .thunderShock, .thunderbolt, .thunderWave, .thunder:
            return .electric
        case .rockThrow:
            return .rock
        case .earthquake, .fissure, .dig:
            return .ground
        case .toxic:
            return .poison
        case .confusion, .psychic, .hypnosis, .meditate, .agility:
            return .psychic
        case .quickAttack, .rage:
            return .normal
        case .teleport:
            return .psychic
        case .nightShade:
            return .ghost
        case .mimic, .screech, .doubleTeam, .recover, .harden, .minimize, .smokescreen:
            return .normal
        case .confuseRay:
            return .ghost
        case .withdraw:
            return .water
        case .defenseCurl:
            return .normal
        case .barrier, .lightScreen:
            return .psychic
        case .haze:
            return .ice
        case .reflect:
            return .psychic
        case .focusEnergy, .bide, .metronome:
            return .normal
        case .mirrorMove:
            return .flying
        case .selfDestruct, .eggBomb:
            return .normal
        case .lick:
            return .ghost
        case .smog, .sludge:
            return .poison
        case .boneClub:
            return .ground
        case .fireBlast:
            return .fire
        case .waterfall, .clamp:
            return .water
        case .swift, .skullBash, .spikeCannon, .constrict:
            return .normal
        case .amnesia, .kinesis:
            return .psychic
        case .softBoiled:
            return .normal
        case .hiJumpKick:
            return .fighting
        case .glare:
            return .normal
        case .dreamEater:
            return .psychic
        case .poisonGas:
            return .poison
        case .barrage:
            return .normal
        case .leechLife:
            return .bug
        case .lovelyKiss:
            return .normal
        case .skyAttack:
            return .flying
        case .transform:
            return .normal
        case .bubble:
            return .water
        case .dizzyPunch:
            return .fighting
        case .spore:
            return .grass
        case .flash:
            return .normal
        case .psywave:
            return .psychic
        case .splash:
            return .normal
        case .acidArmor:
            return .poison
        case .crabhammer:
            return .water
        case .explosion, .furySwipes:
            return .normal
        case .bonemerang:
            return .ground
        case .rest:
            return .psychic
        case .rockSlide:
            return .rock
        case .hyperFang, .sharpen, .conversion, .triAttack, .superFang, .slash, .substitute, .struggle:
            return .normal
        }
    }
}
