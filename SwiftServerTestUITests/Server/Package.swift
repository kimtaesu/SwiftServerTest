// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "HelloKitura",
    dependencies: [
        .package(url: "https://github.com/IBM-Swift/Kitura", from: "2.8.0")
    ],
    targets: [
        .target(
            name: "LocalServer",
            dependencies: ["Kitura"],
            path: "Sources"
        )
    ]
)
