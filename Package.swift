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
                url:"https://artifacts.s73cloud.com/repository/maven-s73-releases/s73-polynet-plat/polynet-ios-starscream-xcframework/4.0.8.24.06.2026/polynet-ios-starscream-xcframework-4.0.8.24.06.2026.zip",
                checksum: "71a19787d1a32c6098a3563fb9871c38187143d1a43eb833b73817360c0430d9"
            ),
            .binaryTarget(
                name: "SwiftProtobuf",
                url:"https://artifacts.s73cloud.com/repository/maven-s73-releases/s73-polynet-plat/polynet-ios-swift-protobuf-xcframework/1.26.0.24.06.2026/polynet-ios-swift-protobuf-xcframework-1.26.0.24.06.2026.zip",
                checksum: "5bd333b5914291114d56171372fde48fddc2db0e1c5ea891ba713f68b9763e01"
            )
        ]
)
