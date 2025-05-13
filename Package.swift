

// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

let version = "1.0.0"
let commonChecksum = "37ef32f3b82d70e2a458f75605b74e90aba9d6bbb4ddc54f529c43f352679f0e"

let turfVersion: Version = "4.0.0"

let package = Package(
    name: "MapplsAPIKit",
    products: [
        .library(name: "MapplsAPIKit", targets: ["mappls-api-kit-demo"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Siddharth-kushwaha/mappls-api-core-test.git", exact: "1.0.0")
    ],
    targets: [
        .target(name: "mappls-api-kit-demo", dependencies: [
            .product(name: "MapplsAPICore", package: "mappls-api-core-test"),
            .target(name: "MapplsAPIKit")
        ]),
        .binaryTarget(
            name: "MapplsAPIKit",
            url: "https://mmi-api-team.s3.amazonaws.com/mappls-sdk-ios/mappls-api-kit/\(version)/MapplsAPIKit.xcframework.zip",
            checksum: commonChecksum
        )
    ]
)
