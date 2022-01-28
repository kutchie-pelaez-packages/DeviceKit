// swift-tools-version:5.3.0

import PackageDescription

let package = Package(
    name: "DeviceKit",
    platforms: [
        .iOS("15")
    ],
    products: [
        .library(name: "DeviceKit", targets: ["DeviceKit"])
    ],
    targets: [
        .target(
            name: "DeviceKit",
            path: "Sources"
        )
    ]
)
