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
                      url: "https://github.com/eerimoq/xcframeworks/releases/download/libdatachannel-0.28.0/libdatachannel.xcframework.zip",
                      checksum: "7423e40a7fb7479a909e2c1f35710e45379e11c5bad5feea38324ca697589875"),
    ]
)
