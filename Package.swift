// swift-tools-version: 6.3

import PackageDescription

let package = Package(
    name: "PokemonBattle",
    products: [
        .library(name: "PokemonBattle", targets: ["PokemonBattle"])
    ],
    dependencies: [
        .package(url: "https://github.com/shipstone98/Utilities", from: "1.0.2")
    ],
    targets: [
        .target(name: "PokemonBattle", dependencies: ["Utilities"]),
        .testTarget(
            name: "PokemonBattleTests",
            dependencies: ["PokemonBattle"]
        )
    ],
    swiftLanguageModes: [.v6]
)
