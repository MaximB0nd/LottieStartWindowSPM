// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "LottieStartWindow",
    platforms: [.iOS(.v18)],
    products: [
        .library(
            name: "LottieStartWindow",
            targets: ["LottieStartWindow"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/airbnb/lottie-spm.git",
            from: "4.5.2"
        ),
    ],
    targets: [
        .target(
            name: "LottieStartWindow",
            dependencies: [
                .product(
                    name: "Lottie",
                    package: "lottie-spm"
                ),
            ]
        ),
    ]
)
