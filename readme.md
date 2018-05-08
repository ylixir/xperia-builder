you have to install the jdk from os x, the nix one doesn't seem to work
you have to modify `darwinSupportedSdkVersions` in `aosp/build/soong/cc/config/x86_darwin_host.go` to include whatever is current.
https://developer.sony.com/develop/open-devices/guides/aosp-build-instructions/build-aosp-nougat-8-1-oreo-4-4/#tutorial-step-4
https://source.android.com/setup/build/initializing#setting-up-a-mac-os-x-build-environment
