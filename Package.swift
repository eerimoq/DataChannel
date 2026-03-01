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
                      url: "https://github.com/eerimoq/xcframeworks/releases/download/libdatachannel-0.27.0-4/libdatachannel.xcframework.zip",
                      checksum: "65fe3c6d7b0d7f696eca7ef19594b592d1e147f27bc5fe05408156d698bdc2e8"),
    ]
)
