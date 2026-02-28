// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DataChannel",
    platforms: [
        .iOS(.v16),
        .macCatalyst(.v16)
    ],
    products: [
        .library(
            name: "DataChannel",
            targets: ["DataChannel", "libdatachannel"]
        ),
    ],
    targets: [
        .target(name: "DataChannel", dependencies: ["libdatachannel"]),
        .binaryTarget(name: "libdatachannel",
                      url: "https://github.com/eerimoq/xcframeworks/releases/download/libdatachannel-0.27.0-3/libdatachannel.xcframework.zip",
                      checksum: "9acb7eff8063e692c241b61e7a38a726dec5317cea2b7f98d9ef522a957c062d"),
    ]
)
