// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "STPopup",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "STPopup",
            targets: ["STPopup"]),
        .library(
            name: "STPopupSwift",
            targets: ["STPopupSwift"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "STPopup"),
        .target(
            name: "STPopupSwift",
            dependencies: ["STPopup"]),
        .testTarget(
            name: "STPopupTests",
            dependencies: ["STPopup", "STPopupSwift"]),
    ]
)
