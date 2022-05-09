// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
 
let package = Package(
    name: "DeviceDNA",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "DeviceDNA",
            targets: ["DeviceDNA"]),
    ],
    targets: [
        .binaryTarget(
            name: "DeviceDNA",
            path: "Framework/DeviceDNA.xcframework"
        )
    ]
)
