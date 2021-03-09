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
            targets: ["UserMessagingPlatformTarget"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "UserMessagingPlatformTarget",
                dependencies: [
                    .target(name: "UserMessagingPlatform")
                ],
                path: "Sources",
                linkerSettings: [
                    .linkedFramework("WebKit")
                ]),
        .binaryTarget(
            name: "UserMessagingPlatform",
            path: "Binary/UserMessagingPlatform.xcframework"),
//        .binaryTarget(name: "UserMessagingPlatform",
//                      url: "",
//                      checksum: ""),
    ]
)
