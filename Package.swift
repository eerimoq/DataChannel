// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Webrtc",
    products: [
        .library(
            name: "Webrtc",
            targets: ["Webrtc"]
        ),
    ],
    targets: [
        .binaryTarget(name: "libdatachannel",
                      url: "https://github.com/HaishinKit/libdatachannel-xcframework/releases/download/v0.24.0/libdatachannel.xcframework.zip",
                      checksum: "52163eed2c9d652d913b20d1fd5a1925c5982b1dcdf335fd916c72ffa385bb26"),
        .target(
            name: "Webrtc",
            dependencies: ["libdatachannel"]
        ),
    ]
)
