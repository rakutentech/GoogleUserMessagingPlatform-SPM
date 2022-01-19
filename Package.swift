// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

// ref. https://github.com/CocoaPods/Specs/blob/1f894cf1c5d71701f2ea32f85e5988b7775632dc/Specs/7/e/f/GoogleUserMessagingPlatform/2.0.0/GoogleUserMessagingPlatform.podspec.json

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
