// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Argon2Swift",
    platforms: [
        .macOS(.v10_10),
        .iOS(.v9),
        .watchOS(.v2),
        .tvOS(.v9)
    ],
    products: [
        .library(
            name: "Argon2Swift",
            targets: ["Argon2Swift"]
        ),
    ],
    dependencies: [
        .package(
            name: "argon2", 
            url: "https://github.com/P-H-C/phc-winner-argon2.git", .branch("master")
        )
    ],
    targets: [
        .target(
            name: "Argon2Swift",
            dependencies: ["argon2"],
            path: "Sources/Swift"
        ),
        .testTarget(
            name: "Argon2SwiftTests",
            dependencies: ["Argon2Swift"],
            path: "Tests"
        ),
    ]
)
