fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

## iOS

### ios upload_core_sdk_podspec

```sh
[bundle exec] fastlane ios upload_core_sdk_podspec
```

Creates a PR with the podspec for the Core SDK.

Usage:
fastlane ios upload_core_sdk_podspec version:1.0.0


### ios upload_widgets_sdk_podspec

```sh
[bundle exec] fastlane ios upload_widgets_sdk_podspec
```

Creates a PR with the podspec for the Widgets SDK.

Usage:
fastlane ios upload_widgets_sdk_podspec version:1.0.0


----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
