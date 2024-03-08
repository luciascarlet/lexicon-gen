// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "lexicon-gen",
    platforms: [
        .macOS(.v13),
    ],
    products: [
        .executable(
            name: "lexicon-gen",
             targets: ["LexiconGen"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-syntax.git", revision: "509.0.0"),
        .package(url: "https://github.com/pointfreeco/swift-custom-dump.git", from: "1.0.0"),
//        .package(url: "https://github.com/Flight-School/AnyCodable", from: "0.6.0"),
    ],
    targets: [
        .executableTarget(
            name: "LexiconGen",
            dependencies: [
                .target(name: "LexiconGenKit"),
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]
        ),
        .target(
            name: "LexiconGenKit",
            dependencies: [
                .product(name: "SwiftSyntaxBuilder", package: "swift-syntax"),
            ]
        ),
        .testTarget(
            name: "LexiconGenKitTests",
            dependencies: [
                .target(name: "LexiconGenKit"),
                .product(name: "CustomDump", package: "swift-custom-dump")
            ]
        ),
    ]
)
