// swift-tools-version:5.9
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://api.github.com/repos/touchlab-lab/ReleaseTest/releases/assets/162780986.zip"
let remoteKotlinChecksum = "6cbee6624c9bb756ba6dbc63cbf6565caa736278a537ac0bbf86ed2f38a2f5b7"
let packageName = "allshared"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
                .iOS(.v16.0)
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