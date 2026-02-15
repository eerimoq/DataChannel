// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Webrtc",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "Webrtc",
            targets: ["Webrtc", "libdatachannel"]
        ),
    ],
    targets: [
        .target(name: "Webrtc", dependencies: ["libdatachannel"]),
        .binaryTarget(name: "libdatachannel",
                      url: "https://github.com/eerimoq/libdatachannel-xcframework/releases/download/v0.26.0/libdatachannel.xcframework.zip",
                      checksum: "48c91ff56916cc9c01ccde35489ad87d8ff5124d5d395b5459f9e6a641152b86"),
    ]
)
