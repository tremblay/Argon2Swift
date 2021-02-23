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
    targets: [
        .target(
            name: "argon2",
            path: "Sources/Argon2",
            exclude: [
                "kats",
                "vs2015",
                "latex",
                "libargon2.pc.in",
                "export.sh",
                "appveyor.yml",
                "Argon2.sln",
                "argon2-specs.pdf",
                "CHANGELOG.md",
                "LICENSE",
                "Makefile",
                "man",
                "README.md",
                "src/bench.c",
                "src/genkat.c",
                "src/opt.c",
                "src/run.c",
                "src/test.c",
            ],
            sources: [
                "src/blake2/blake2b.c",
                "src/blake2/blake2.h",
                "src/blake2/blake2-impl.h",
                "src/blake2/blamka-round-ref.h",
                "src/argon2.c",
                "src/core.c",
                "src/core.h",
                "src/encoding.c",
                "src/encoding.h",
                "src/ref.c",
                "src/thread.c",
                "src/thread.h",
            ]
        ),
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
