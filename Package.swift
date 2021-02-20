// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GoogleUserMessagingPlatform-SPM",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "UserMessagingPlatform",
            targets: ["UserMessagingPlatform"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "UserMessagingPlatform",
                dependencies: [
                    .target(name: "UserMessagingPlatformBinary")
                ],
                path: "Sources/dummy",
                linkerSettings: [
                    .linkedFramework("WebKit")
                ]),
        .binaryTarget(
            name: "UserMessagingPlatformBinary",
            path: "Sources/UserMessagingPlatform.xcframework"),
//        .binaryTarget(name: "UserMessagingPlatformBinary",
//                      url: "",
//                      checksum: ""),
    ]
)
