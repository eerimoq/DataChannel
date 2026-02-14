// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Webrtc",
    products: [
        .library(
            name: "Webrtc",
            targets: ["libdatachannel"]
        ),
    ],
    targets: [
        .binaryTarget(name: "libdatachannel",
                      url: "https://github.com/eerimoq/libdatachannel-xcframework/releases/download/v0.25.0/libdatachannel.xcframework.zip",
                      checksum: "0052d6c90d898792523f1792c564a689fd1a6cc786b107a7f1e5b926ca8198a4"),
    ]
)
