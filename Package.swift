// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

let version = "1.0.1"
let checksum = "81717b5c7d423fde48e3f5faf3a6470c1c6a698923ae14cf97cb83214ac83fbc"

let package = Package(
    name: "MapplsAPIKit",
    products: [
        .library(
            name: "MapplsAPIKit",
            targets: ["mappls-api-kit-demo"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Siddharth-kushwaha/mappls-api-core-test.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "mappls-api-kit-demo",
            dependencies: [.product(name: "MapplsAPICore", package: "mappls-api-core-test"), "MapplsAPIKit"]
        ),
        .binaryTarget(
            name: "MapplsAPIKit",
            url: "https://mmi-api-team.s3.amazonaws.com/mappls-sdk-ios/mappls-api-kit/\(version)/MapplsAPIKit.xcframework.zip",
            checksum: checksum
        )
    ]
)




// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
/*
import PackageDescription
import Foundation

let version = "1.0.0"
let commonChecksum = "81717b5c7d423fde48e3f5faf3a6470c1c6a698923ae14cf97cb83214ac83fbc"

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
*/
