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
                      url: "https://github.com/julepka/themis/releases/download/0.15.1/themis.xcframework.zip",
                      // $swift package compute-checksum output/themis.xcframework.zip
                      checksum: "d894fc82df1fbf7542afca0971455a37e843888519bf355ba757bbfef1137a77"),

    ]
)
