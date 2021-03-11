// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "themis",
    products: [
        .library(
            name: "themis",
            targets: ["themis"]),
    ],
    dependencies: [],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "themis",
                      url: "https://github.com/julepka/themis/releases/download/0.15/themis.xcframework.zip",
                      // $swift package compute-checksum output/themis.xcframework.zip
                      checksum: "425c2279e35c992a47ff1d23922e1cb46f18ea7af254df8c5fd1b95a0441e799"),

    ]
)
