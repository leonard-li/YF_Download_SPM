// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YF_Download",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "YF_Download",
            targets: ["YF_Download_Target"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/leonard-li/YF_Core_SPM.git", 
            from: "1.7.8"
        )
    ],
    targets: [
        .target(
            name: "YF_Download_Target",
            dependencies: [
                "YF_Download_Binary"
                .product(name: "YF_Core", package: "YF_Core_SPM")
            ]
        ),
        .binaryTarget(
            name: "YF_Download_Binary",
            url: "https://mvn.yifants.cn/artifactory/fineboost-spm/download/1.0.8/YFDownloader.xcframework.zip",
            checksum: "299676bc283a9fefc269dea5283acc4bc88b6aad37c5c8ec72463536d4cf6ee5"
        )
    ]
)