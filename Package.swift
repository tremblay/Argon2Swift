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
            name: "Argon2",
            url: "https://github.com/tremblay/phc-winner-argon2.git", .branch("swift-package-manager")
        ),
    ],
    targets: [
        .target(
            name: "Argon2Swift",
            dependencies: ["Argon2"],
            path: "Sources/Swift"
        ),
        .testTarget(
            name: "Argon2SwiftTests",
            dependencies: ["Argon2Swift"],
            path: "Tests"
        ),
    ]
)
