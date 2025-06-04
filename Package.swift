// swift-tools-version:5.9

import PackageDescription
import Foundation

let checksum = "91dae209167f2bbca32a217afa0c309516344ed358667840d0091cbdfc15572f"

let package = Package(
    name: "MapplsAPIKit",
    products: [
        .library(
            name: "MapplsAPIKit",
            targets: ["mappls-api-kit-demo"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Siddharth-kushwaha/mappls-api-core-test.git", from: "3.0.1"),
    ],
    targets: [
        .target(
            name: "mappls-api-kit-demo",
            dependencies: [.product(name: "MapplsAPICore", package: "mappls-api-core-test"), "MapplsAPIKit"]
        ),
        .binaryTarget(
            name: "MapplsAPIKit",
            url: "https://mmi-api-team.s3.amazonaws.com/mappls-sdk-ios/mappls-api-kit/MapplsAPIKit-3.0.0.zip",
            checksum: checksum
        )
    ]
)
