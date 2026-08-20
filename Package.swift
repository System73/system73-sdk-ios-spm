// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "system73-sdk-ios-spm",

    products: [
        .library(
            name: "PolyNetSDK",
            targets: ["PolyNetSDKWrapper"]
        )
    ],

    dependencies: [
        .package(
            url: "https://github.com/apple/swift-protobuf.git",
            from: "1.26.0"
        )
    ],

    targets: [

        .binaryTarget(
            name: "PolyNetSDK",
            url: "https://artifacts.s73cloud.com/repository/maven-s73-releases/s73-polynet-plat/polynet-apple-sdk/5.2.5/polynet-apple-sdk-5.2.5.zip",
            checksum: "07f11129bc63873a214628c2a007a0f8913c1058b8147d6c8d9eba1edd2be092"
        ),

            .target(
                name: "PolyNetSDKWrapper",
                dependencies: [
                    "PolyNetSDK",
                    .product(name: "SwiftProtobuf", package: "swift-protobuf")
                ],
                path: "Sources/system73-sdk-ios-spm"
            )
    ]
)
