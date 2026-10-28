// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GenieeMediationLine",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "GenieeMediationLine",
            targets: ["GenieeMediationLineTarget"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/geniee-ssp/swift-package-manager-geniee-ios-sdk.git",
            from: "8.5.1"
        ),
        .package(
            url: "https://github.com/ly-ads-network/swift-package-manager-fivead.git",
            exact: "3.0.1"
        )
    ],
    targets: [
        .target(
            name: "GenieeMediationLineTarget",
            dependencies: [
                "GenieeMediationLine",
                .product(name: "GNAdSDK", package: "swift-package-manager-geniee-ios-sdk"),
                .product(name: "FiveAd", package: "swift-package-manager-fivead")
            ],
            path: "Sources/GenieeMediationLineTarget"
        ),
        .binaryTarget(
            name: "GenieeMediationLine",
            url: "https://github.com/geniee-ssp/geniee-ios-mediation-line/releases/download/3.0.101/GenieeMediationLine.3.0.1.1.zip",
            checksum: "9739a1722940124efbf989c651157057381d84b687901931c243904af9010ae9"
        )
    ]
)
