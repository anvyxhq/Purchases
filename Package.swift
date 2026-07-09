// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Purchases",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(name: "AnvyxPurchaseKit", targets: ["AnvyxPurchaseKit"]),
    ],
    targets: [
        .target(name: "AnvyxPurchaseKit"),
        .testTarget(name: "AnvyxPurchaseKitTests", dependencies: ["AnvyxPurchaseKit"]),
    ]
)
