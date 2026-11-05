
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
            url: "https://artifacts.s73cloud.com/repository/maven-s73-releases/s73-polynet-plat/polynet-apple-sdk/5.2.6/polynet-apple-sdk-5.2.6.zip",
            checksum: "358dc74c337544ae0637b10fc2056b0eef12456c0cef0296829f8a4d05e911c9"
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
