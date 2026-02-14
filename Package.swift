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
                      url: "https://github.com/eerimoq/libdatachannel-xcframework/releases/download/v0.24.0/libdatachannel.xcframework.zip",
                      checksum: "fcca84012146129e6d8c045866c4b983366ddd5735e043a64306cc8b02ff020b"),
    ]
)
