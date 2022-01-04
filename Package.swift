// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Resume",
    products: [
        .executable(
            name: "Resume",
            targets: ["Resume"]
        )
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.7.0")
    ],
    targets: [
        .target(
            name: "Resume",
            dependencies: ["Publish"]
        )
    ]
)
