// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "osxdotool",
    
    dependencies: [
        .Package(url: "https://github.com/twof/CLSwift.git", majorVersion: 1)
    ]
)
