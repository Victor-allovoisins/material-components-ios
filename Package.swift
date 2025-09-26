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
                "*/examples",
                "*/tests",
                "*/docs",
                "*/LICENSE",
                "*/README.md",
                "*/.jazzy.yaml",
                "**/examples",
                "**/tests",
                "**/docs",
                "**/*.xcassets",
                "**/*.bundle"
            ],
            sources: [
                // Core dependencies
                "Availability/src",
                "MinimumOS/src",
                "AnimationTiming/src",
                "private/Math/src",
                "private/Application/src",
                "private/KeyboardWatcher/src",

                // BottomSheet and dependencies
                "BottomSheet/src",
                "Elevation/src",
                "ShadowElevations/src",
                "ShadowLayer/src",
                "Shapes/src",
                "ShapeLibrary/src",

                // TextControls and dependencies
                "TextControls/src/BaseTextFields",
                "TextControls/src/BaseTextAreas",
                "TextControls/src/OutlinedTextFields",
                "TextControls/src/OutlinedTextAreas",
                "TextControls/src/Enums",
                "private/TextControlsPrivate/src/BaseStyle",
                "private/TextControlsPrivate/src/OutlinedStyle",
                "private/TextControlsPrivate/src/Shared",
                "private/TextControlsPrivate/src/TextFields",

                // Container scheme and dependencies
                "schemes/Container/src",
                "schemes/Color/src",
                "schemes/Typography/src",
                "schemes/Typography/src/Scheming",
                "schemes/Typography/src/BasicFontScheme",
                "schemes/Shape/src",
                "Color/src",
                "Typography/src",
                "Typography/src/FontScaler",
                "Typography/src/private",
                "private/Color/src",

                // Buttons and dependencies
                "Buttons/src",
                "Buttons/src/Theming",
                "Buttons/src/ShapeThemer",
                "Buttons/src/ColorThemer",
                "Buttons/src/ButtonThemer",
                "Buttons/src/TypographyThemer",
                "Ripple/src",
                "Shadow/src",
                "Ink/src",

                // Chips
                "Chips/src",

                // Tabs
                "Tabs/src/TabBarView",
                "Badges/src",
                "Badges/src/Appearance",

                // TextFields (legacy)
                "TextFields/src",
                "Palettes/src",

                // Additional theming
                "TextControls/src/OutlinedTextFieldsTheming",
                "TextControls/src/OutlinedTextAreasTheming"
            ],
            publicHeadersPath: "MaterialComponents",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("Availability/src"),
                .headerSearchPath("MinimumOS/src"),
                .headerSearchPath("AnimationTiming/src"),
                .headerSearchPath("private/Math/src"),
                .headerSearchPath("private/Application/src"),
                .headerSearchPath("private/KeyboardWatcher/src"),
                .headerSearchPath("BottomSheet/src"),
                .headerSearchPath("BottomSheet/src/private"),
                .headerSearchPath("Elevation/src"),
                .headerSearchPath("ShadowElevations/src"),
                .headerSearchPath("ShadowLayer/src"),
                .headerSearchPath("Shapes/src"),
                .headerSearchPath("ShapeLibrary/src"),
                .headerSearchPath("TextControls/src/BaseTextFields"),
                .headerSearchPath("TextControls/src/BaseTextAreas"),
                .headerSearchPath("TextControls/src/BaseTextAreas/private"),
                .headerSearchPath("TextControls/src/OutlinedTextFields"),
                .headerSearchPath("TextControls/src/OutlinedTextAreas"),
                .headerSearchPath("TextControls/src/Enums"),
                .headerSearchPath("private/TextControlsPrivate/src/BaseStyle"),
                .headerSearchPath("private/TextControlsPrivate/src/OutlinedStyle"),
                .headerSearchPath("private/TextControlsPrivate/src/Shared"),
                .headerSearchPath("private/TextControlsPrivate/src/TextFields"),
                .headerSearchPath("schemes/Container/src"),
                .headerSearchPath("schemes/Color/src"),
                .headerSearchPath("schemes/Typography/src"),
                .headerSearchPath("schemes/Typography/src/Scheming"),
                .headerSearchPath("schemes/Typography/src/BasicFontScheme"),
                .headerSearchPath("schemes/Shape/src"),
                .headerSearchPath("Color/src"),
                .headerSearchPath("Typography/src"),
                .headerSearchPath("Typography/src/FontScaler"),
                .headerSearchPath("Typography/src/private"),
                .headerSearchPath("private/Color/src"),
                .headerSearchPath("Buttons/src"),
                .headerSearchPath("Buttons/src/include"),
                .headerSearchPath("Buttons/src/Theming"),
                .headerSearchPath("Buttons/src/ShapeThemer"),
                .headerSearchPath("Buttons/src/ColorThemer"),
                .headerSearchPath("Buttons/src/ButtonThemer"),
                .headerSearchPath("Buttons/src/TypographyThemer"),
                .headerSearchPath("Ripple/src"),
                .headerSearchPath("Shadow/src"),
                .headerSearchPath("Ink/src"),
                .headerSearchPath("Ink/src/private"),
                .headerSearchPath("Chips/src"),
                .headerSearchPath("Tabs/src/TabBarView"),
                .headerSearchPath("Badges/src"),
                .headerSearchPath("Badges/src/Appearance"),
                .headerSearchPath("TextFields/src/include"),
                .headerSearchPath("Palettes/src"),
                .headerSearchPath("TextControls/src/OutlinedTextFieldsTheming"),
                .headerSearchPath("TextControls/src/OutlinedTextAreasTheming"),
                .headerSearchPath("MaterialComponents"),
                .headerSearchPath("."),
                .define("SWIFT_PACKAGE")
            ]
        )
    ]
)