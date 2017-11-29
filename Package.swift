// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "osxdotool",
    dependencies: [
        .package(url: "https://github.com/twof/CLSwift.git", from: "1.4.0")
    ],
    targets: [
        .target(
            name: "osxdotool",
            dependencies: ["osxdotoolCore", "CLSwift"]
        ),
        .target(name: "osxdotoolCore"),
        .testTarget(
            name: "osxdotoolTests",
            dependencies: ["osxdotoolCore"]
        )
    ]
)
