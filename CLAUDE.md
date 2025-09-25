# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Material Components for iOS (MDC-iOS) is a library implementing Google's Material Design components for iOS applications. **Note: This library is in maintenance mode as of July 15, 2021**.

This codebase supports both CocoaPods and Swift Package Manager, with the primary focus now on Swift Package Manager development.

## Build System & Package Management

### Swift Package Manager (Primary)
- **Package.swift**: Main Swift Package Manager configuration
- Supports iOS 14+
- Main product: `TextFields` library
- Dependencies: Material Internationalization and Text Accessibility (Volvo-forked versions)
- Key targets: TextFields, Buttons, Typography, Elevation, Ripple, Shapes, and private utilities

### CocoaPods (Legacy)
- **MaterialComponents.podspec**: Main podspec (large file, use grep for specific searches)
- Multiple component-specific podspecs available

## Common Development Commands

### Building
```bash
# Build all components and schemes
./scripts/build_all

# Build with verbose output
./scripts/build_all --verbose
```

### Testing
```bash
# Run all tests (uses MDCCatalog workspace)
./scripts/test_all

# Tests run on iOS Simulator (iPhone 7, latest OS by default)
# Uses code coverage: GCC_INSTRUMENT_PROGRAM_FLOW_ARCS=YES GCC_GENERATE_TEST_COVERAGE_FILES=YES
```

### Other Maintenance Scripts
```bash
./scripts/prep_all          # Prepare catalog, tests, and demo apps
./scripts/clean_all         # Remove build artifacts
./scripts/check_components  # Run component documentation/example checks
./scripts/lint_all          # Lint all code
```

## Architecture & Code Structure

### Component Organization
- **components/**: Individual Material Design components (50+ components)
  - Each component has its own directory with src/, examples/, tests/, docs/
  - Components include: Buttons, TextFields, Typography, AppBar, Cards, Dialogs, etc.
  - Private utilities: AnimationTiming, Color, Math, Application

### Key Components in Swift Package Manager
- **TextFields**: Main exported product, depends on multiple other components
- **Buttons**: UI buttons with Material Design styling and theming
- **Typography**: Text styling and font management with accessibility support
- **Shapes/ShapeLibrary**: Shape rendering and styling system
- **Elevation/Shadow**: Material elevation and shadow system
- **Private utilities**: Color, Math, Application helpers

### Dependencies
- **MDFInternationalization**: Internationalization utilities (Volvo fork)
- **MDFTextAccessibility**: Text accessibility features (Volvo fork)

## Testing Setup
- Tests use the **MDCCatalog.xcworkspace** in the catalog/ directory
- CocoaPods installation required: `pod install --project-directory=catalog`
- Uses xcpretty for formatted output when available
- Supports custom DESTINATION for different simulators

## Code Conventions
- **Objective-C**: Primary implementation language
- **Swift**: Supported for integration
- **Interface Builder**: Supported
- Uses Google's style guide for both Bash and Python scripting
- Header search paths configured per component
- Public headers explicitly defined in Package.swift targets