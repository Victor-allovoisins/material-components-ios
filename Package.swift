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
            path: "components",
            exclude: [
                "ActionSheet",
                "ActivityIndicator",
                "AppBar",
                "Badges",
                "Banner",
                "BottomAppBar",
                "BottomNavigation",
                "ButtonBar",
                "Buttons",
                "Cards",
                "Carousel",
                "Chips",
                "CollectionCells",
                "CollectionLayoutAttributes",
                "Collections",
                "Dialogs",
                "FeatureHighlight",
                "FlexibleHeader",
                "HeaderStackView",
                "LibraryInfo",
                "List",
                "M3CButton",
                "M3CTextField",
                "NavigationBar",
                "NavigationDrawer",
                "OverlayWindow",
                "PageControl",
                "ProgressView",
                "ScalableFontDescriptor",
                "SegmentedControl",
                "Slider",
                "Snackbar",
                "Tabs",
                "Themes",
                "docs",
                "README.md",
                "Shadow/src/Animations",
                "TextFields/src/Theming",
                "TextFields/src/ColorThemer",
                "TextControls/src/BaseTextAreas/private",
                "TextControls/src/BaseTextFields/private",
                "Typography/src/FontLoader",
                "schemes/Typography/src/MDCLegacyFontScheme.h"
            ],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("private"),
                .headerSearchPath("Availability/src"),
                .headerSearchPath("MinimumOS/src"),
                .headerSearchPath("Typography/src/private"),
                .headerSearchPath("Typography/src/FontScaler"),
                .headerSearchPath("TextControls/src/Enums"),
                .headerSearchPath("schemes/Typography/src/Scheming"),
                .headerSearchPath("schemes/Typography/src/BasicFontScheme"),
                .define("SWIFT_PACKAGE")
            ]
        )
    ]
)
