#import <Foundation/Foundation.h>

NSBundle* TextFields_SWIFTPM_MODULE_BUNDLE() {
    NSURL *bundleURL = [[[NSBundle mainBundle] bundleURL] URLByAppendingPathComponent:@"MaterialComponents_TextFields.bundle"];

    NSBundle *preferredBundle = [NSBundle bundleWithURL:bundleURL];
    if (preferredBundle == nil) {
      return [NSBundle bundleWithPath:@"/Users/victor/Developer/iOS/material-components-ios/.build/index-build/arm64-apple-macosx/debug/MaterialComponents_TextFields.bundle"];
    }

    return preferredBundle;
}