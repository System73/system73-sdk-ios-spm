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
            url: "https://github.com/daltoniam/Starscream.git",
            from: "4.0.8"
        ),
        .package(
            url: "https://github.com/apple/swift-protobuf.git",
            from: "1.26.0"
        ),
        .package(
            url: "https://github.com/System73/system73-webrtc-ios-spm.git",
            from: "1.0.0"
        ),
        .package(
            url: "https://github.com/System73/system73-webrtc-tvos-spm.git",
            from: "1.0.0"
        )
    ],

    targets: [

        .binaryTarget(
            name: "PolyNetSDK",
            url: "https://artifacts.s73cloud.com/repository/maven-s73-releases/s73-polynet-plat/polynet-apple-sdk/5.2.3/polynet-apple-sdk-5.2.3.zip",
            checksum: "baeb71e53e352c388df6e66bf2e32264e380efcf84306d1a3c3945ff075d5560"
        ),

            .target(
                name: "PolyNetSDKWrapper",
                dependencies: [
                    "PolyNetSDK",
                    .product(name: "Starscream", package: "Starscream"),
                    .product(name: "SwiftProtobuf", package: "swift-protobuf"),
                    .product(
                        name: "WebRTC_iOS",
                        package: "system73-webrtc-ios-spm",
                        condition: .when(platforms: [.iOS])
                    ),
                    .product(
                        name: "WebRTCtvOS",
                        package: "system73-webrtc-tvos-spm",
                        condition: .when(platforms: [.tvOS])
                    )
                ],
                path: "Sources/system73-sdk-ios-spm"
            )
    ]
)
