// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BolgSPMSDK",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "BolgSPMSDK", targets: ["BolgSPMSDKTargets"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.0.1")),
    ],
    targets: [
        .binaryTarget(
            name: "BolgSPMSDK",
            path: "archives/BolgSPMSDK.xcframework"
        ),
        .target(
            name: "BolgSPMSDKTargets",
            dependencies: [
                "SnapKit",
                .target(name: "BolgSPMSDK"),
            ],
            path: "Sources/BolgSPMSDK/Classes"
        ),
    ]
)
