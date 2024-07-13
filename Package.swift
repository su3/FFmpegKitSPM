// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FFmpegKitSPM",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "FFmpegKitSPM",
            targets: ["FFmpegKitSPM"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "FFmpegKitSPM",
            dependencies: ["ffmpegkit", "libavcodec", "libavdevice", "libavfilter", "libavformat", "libavutil", "libswresample", "libswscale"]
        ),
        .testTarget(
            name: "FFmpegKitSPMTests",
            dependencies: ["FFmpegKitSPM"]
        ),
        .binaryTarget(
            name: "ffmpegkit",
            path: "./Sources/ffmpegkit.xcframework"
        ),
        .binaryTarget(
            name: "libavcodec",
            path: "./Sources/libavcodec.xcframework"
        ),
        .binaryTarget(
            name: "libavdevice",
            path: "./Sources/libavdevice.xcframework"
        ),
        .binaryTarget(
            name: "libavfilter",
            path: "./Sources/libavfilter.xcframework"
        ),
        .binaryTarget(
            name: "libavformat",
            path: "./Sources/libavformat.xcframework"
        ),
        .binaryTarget(
            name: "libavutil",
            path: "./Sources/libavutil.xcframework"
        ),
        .binaryTarget(
            name: "libswresample",
            path: "./Sources/libswresample.xcframework"
        ),
        .binaryTarget(
            name: "libswscale",
            path: "./Sources/libswscale.xcframework"
        )
    ]
)
