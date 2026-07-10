// swift-tools-version: 6.2
import PackageDescription

let concurrencyBaseline: [SwiftSetting] = [
    .swiftLanguageMode(.v6),
    .defaultIsolation(nil),
    .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
    .enableUpcomingFeature("InferIsolatedConformances"),
]

let package = Package(
    name: "Purchases",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(name: "AnvyxPurchaseKit", targets: ["AnvyxPurchaseKit"]),
    ],
    targets: [
        .target(name: "AnvyxPurchaseKit", swiftSettings: concurrencyBaseline),
        .testTarget(name: "AnvyxPurchaseKitTests", dependencies: ["AnvyxPurchaseKit"], swiftSettings: concurrencyBaseline),
    ]
)
