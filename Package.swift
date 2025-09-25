// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MaterialComponents",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(name: "MaterialComponents", targets: ["MaterialComponents"])
    ],
    dependencies: [
        .package(url: "https://github.com/volvogroup-mobility/material-text-accessibility-ios", from: "2.0.1+volvo1"),
        .package(url: "https://github.com/volvogroup-mobility/material-internationalization-ios", from: "3.0.0+volvo1")
    ],
    targets: [
        .target(
            name: "MaterialComponents",
            dependencies: [
                .product(name: "MDFInternationalization", package: "material-internationalization-ios"),
                .product(name: "MDFTextAccessibility", package: "material-text-accessibility-ios")
            ],
            path: ".",
            exclude: [
                "components/*/examples",
                "components/*/tests",
                "components/*/*/examples",
                "components/*/*/tests"
            ],
            sources: [
                "components/TextControls/src/OutlinedTextFields",
                "components/TextControls/src/OutlinedTextAreas",
                "components/TextControls/src/BaseTextFields",
                "components/TextControls/src/BaseTextAreas",
                "components/TextControls/src/Enums",
                "components/BottomSheet/src",
                "components/private/TextControlsPrivate/src/Shared",
                "components/private/TextControlsPrivate/src/OutlinedStyle",
                "components/private/TextControlsPrivate/src/BaseStyle",
                "components/private/Math/src",
                "components/private/Application/src",
                "components/private/KeyboardWatcher/src",
                "components/Availability/src",
                "components/Typography/src",
                "components/Shapes/src",
                "components/ShadowLayer/src",
                "components/ShadowElevations/src",
                "components/Elevation/src",
                "components/Color/src",
                "components/private/Color/src",
                "components/schemes/Container/src"
            ],
            publicHeadersPath: "components/Availability/src",
            cSettings: [
                .headerSearchPath("components"),
                .headerSearchPath("components/TextControls/src/Enums"),
                .headerSearchPath("components/private"),
                .headerSearchPath("components/Typography/src/private"),
                .headerSearchPath("components/Typography/src/FontScaler"),
                .headerSearchPath("components/schemes"),
                .define("SWIFT_PACKAGE")
            ]
        )
    ]
)
