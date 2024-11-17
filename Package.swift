// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
  name: "MyCLI",
  products: [
    .executable(name: "MyCLI", targets: ["MyCLI"])
  ],
  dependencies: [
    .package(url: "https://github.com/apple/swift-argument-parser", from: "0.4.4"),
    .package(url: "https://github.com/apple/example-package-figlet", branch: "main")
  ],
  targets: [
    .executableTarget(name: "MyCLI",
                      dependencies:
                        [
                          .product(name: "ArgumentParser", package: "swift-argument-parser"),
                          .product(name: "Figlet", package: "example-package-figlet"),
                        ]
                     )
  ]
)
