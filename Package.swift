// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DataChannel",
    platforms: [
        .iOS(.v16)
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
                      url: "https://github.com/eerimoq/xcframeworks/releases/download/libdatachannel-0.27.0-2/libdatachannel.xcframework.zip",
                      checksum: "4e955ca212244b425d64309bb0064ece75e8c49d8cda45e446a677401764cf2a"),
    ]
)
