// swift-tools-version:5.8
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://api.github.com/repos/touchlab-lab/ReleaseTest/releases/assets/164962182.zip"
let remoteKotlinChecksum = "7a6c0d7f1c2a2091d3a0cad0ce97d23120fe7395c8530dd15692f2df6d342b61"
let packageName = "allshared"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)