// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "VimeoNetworking",
    products: [
        .library(
            name: "VimeoNetworking",
            targets: ["VimeoNetworking"]),
    ],
    targets: [
        .target(
            name: "VimeoNetworking",
            path: "Sources")
    ]
)
