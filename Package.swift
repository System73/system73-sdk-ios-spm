// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "system73-sdk-ios-spm",
    products: [
            // Products define the executables and libraries a package produces, making them visible to other packages.
            .library(
                name: "PolyNetSDK",
                targets: ["PolyNetSDK"]
            ),
            .library(
                name: "Starscream",
                targets: ["Starscream"]
            ),
            .library(
                name: "SwiftProtobuf",
                targets: ["SwiftProtobuf"]
            )
        ],
        dependencies: [],
        targets: [
            .binaryTarget(
                name: "PolyNetSDK",
                url:"https://artifacts.s73cloud.com/repository/maven-s73-releases/s73-polynet-plat/polynet-apple-sdk/5.2.3/polynet-apple-sdk-5.2.3.zip",
                checksum:"baeb71e53e352c388df6e66bf2e32264e380efcf84306d1a3c3945ff075d5560"
            ),
            .binaryTarget(
                name: "Starscream",
                url:"https://artifacts.s73cloud.com/repository/maven-s73-releases/s73-polynet-plat/polynet-ios-starscream-xcframework/4.0.8.03.01.2026/polynet-ios-starscream-xcframework-4.0.8.03.01.2026.zip",
                checksum: "ee75df480afee8b7aeda21189f71f8bfb8c13e8e254bff8f73be5c44c5e64b6d"
            ),
            .binaryTarget(
                name: "SwiftProtobuf",
                url:"https://artifacts.s73cloud.com/repository/maven-s73-releases/s73-polynet-plat/polynet-ios-swift-protobuf-xcframework/1.26.0.03.01.2026/polynet-ios-swift-protobuf-xcframework-1.26.0.03.01.2026.zip",
                checksum: "cd783820f3ed183ca756fc45e6ae14a3eaf2b46c2e48f8b0212662a2b7dbb301"
            )
        ]
)
