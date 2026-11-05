
 // swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "system73-sdk-ios-spm",

    products: [
        .library(
            name: "PolyNetSDK",
            targets: ["PolyNetSDKWrapper"]
        )
    ],

    // SwiftProtobuf is intentionally excluded.
    // It will be managed externally by the client application.
    //
    // dependencies: [
    //     .package(
    //         url: "https://github.com/apple/swift-protobuf.git",
    //         from: "1.26.0"
    //     )
    // ],

    targets: [

        .binaryTarget(
            name: "PolyNetSDK",
            url: "https://artifacts.s73cloud.com/repository/maven-s73-releases/s73-polynet-plat/polynet-apple-sdk/5.2.7/polynet-apple-sdk-5.2.7.zip",
            checksum: "9b317c5656d46ac15a56d1c59a5b1a76a4416137a7a946d82c05650b3200c210"
        ),

        .target(
            name: "PolyNetSDKWrapper",
            dependencies: [
                "PolyNetSDK"
            ],
            path: "Sources/system73-sdk-ios-spm"
        )
    ]
)
