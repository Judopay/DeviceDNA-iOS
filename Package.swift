// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DeviceDNA",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "DeviceDNA",
            targets: ["DeviceDNATarget"])
    ],
    dependencies: [
        .package(url: "https://github.com/krzyzanowskim/OpenSSL", from: "1.1.180")
    ],
    targets: [
        .target(
            name: "DeviceDNATarget",
            dependencies: [
                .product(name: "OpenSSL", package: "OpenSSL"),
                .target(name: "DeviceDNA")
            ],
            path: "Sources"),
        .binaryTarget(
            name: "DeviceDNA",
            path: "Framework/DeviceDNA.xcframework")
    ])
