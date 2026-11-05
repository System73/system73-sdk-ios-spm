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
            exact: "1.0.1"
        ),
        .package(
            url: "https://github.com/System73/system73-webrtc-tvos-spm.git",
            exact: "1.0.1"
        )
    ],

    targets: [

        .binaryTarget(
            name: "PolyNetSDK",
            url: "https://artifacts.s73cloud.com/repository/maven-s73-releases/s73-polynet-plat/polynet-apple-sdk/5.2.7/polynet-apple-sdk-5.2.7.zip",
            checksum: "9b317c5656d46ac15a56d1c59a5b1a76a4416137a7a946d82c05650b3200c210"
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
