// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "system73-sdk-ios-spm",

    platforms: [
        .iOS(.v15),    
        .tvOS(.v15)
    ],

    products: [
        .library(
            name: "PolyNetSDK",
            targets: ["PolyNetSDKWrapper"]
        )
    ],

    dependencies: [
        .package(
            url: "https://github.com/System73/system73-webrtc-ios-spm.git",
            exact: "1.0.2"
        ),
        .package(
            url: "https://github.com/System73/system73-webrtc-tvos-spm.git",
            exact: "1.0.2"
        )
    ],

    targets: [

        .binaryTarget(
            name: "PolyNetSDK",
            url: "https://artifacts.s73cloud.com/repository/maven-s73-releases/s73-polynet-plat/polynet-apple-sdk/5.2.8/polynet-apple-sdk-5.2.8.zip",
            checksum: "d892e830d46063fc61cc7448f107d703438973a3089adda3ebea2b77511e2c3a"
        ),

        .target(
            name: "PolyNetSDKWrapper",
            dependencies: [
                "PolyNetSDK",
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
