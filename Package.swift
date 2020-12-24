// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "VimeoNetworking",
    products: [
        .library(
            name: "VimeoNetworking",
            targets: ["VimeoNetworking"]),
    ],
    dependencies: [
        .package(
            name: "OHHTTPStubs/Swift",
            url: "https://github.com/AliSoftware/OHHTTPStubs.git",
            .exact("8.0.0")
        )
    ],
    targets: [
        .target(
            name: "VimeoNetworking",
            dependencies: ["OHHTTPStubs/Swift"],
            path: "VimeoNetworking/Sources")
    ]
)
