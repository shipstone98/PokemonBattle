//
//  calculateStat.swift
//  PokemonBattle
//
//  Created by Christopher Shipstone on 08/05/2026.
//

public func calculateHP(
    speciesStrength: Int,
    basePoint: Int,
    individualStrength: Int,
    at level: Int
) -> Int {
    let hp = calculateStat(
        speciesStrength: speciesStrength,
        basePoint: basePoint,
        individualStrength: individualStrength,
        at: level
    )
    
    return hp + level + 5
}

public func calculateStat(
    speciesStrength: Int,
    basePoint: Int,
    individualStrength: Int,
    at level: Int
) -> Int {
    let basePoint = basePoint.squareRooted(isCeiling: true)
    
    return ((((speciesStrength + individualStrength) * 2 + basePoint / 4) * level) / 100) + 5
}

internal func calculateStagedStat(_ value: Int, at stage: Int) -> Int {
    let numerator: Int
    
    switch stage {
    case -6:
        numerator = 25
    case -5:
        numerator = 28
    case -4:
        numerator = 33
    case -3:
        numerator = 40
    case -2:
        numerator = 50
    case -1:
        numerator = 66
    case 1:
        numerator = 150
    case 2:
        numerator = 200
    case 3:
        numerator = 250
    case 4:
        numerator = 300
    case 5:
        numerator = 350
    case 6:
        numerator = 400
    default:
        numerator = 100
    }
    
    return (numerator * value) / 100
}
