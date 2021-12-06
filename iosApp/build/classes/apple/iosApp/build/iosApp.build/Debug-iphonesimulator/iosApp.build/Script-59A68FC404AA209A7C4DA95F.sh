#!/bin/sh
#!/bin/sh
mkdir -p "$SRCROOT/../../../classes/apple/iosApp/build/Frameworks"
if [ "$CONFIGURATION" = "Debug" ] && [ "$ARCHS" = "arm64" ] && [[ " ${SUPPORTED_PLATFORMS[@]} " =~ " iphoneos " ]]; then
    ln -sf "$SRCROOT/../../../../../shared/build/bin/iosArm64/debugFramework/shared.framework" "$SRCROOT/../../../classes/apple/iosApp/build/Frameworks/shared.framework"
fi
if [ "$CONFIGURATION" = "Debug" ] && [ "$ARCHS" = "x86_64" ] && [[ " ${SUPPORTED_PLATFORMS[@]} " =~ " iphonesimulator " ]]; then
    ln -sf "$SRCROOT/../../../../../shared/build/bin/iosX64/debugFramework/shared.framework" "$SRCROOT/../../../classes/apple/iosApp/build/Frameworks/shared.framework"
fi
if [ "$CONFIGURATION" = "Release" ] && [ "$ARCHS" = "arm64" ] && [[ " ${SUPPORTED_PLATFORMS[@]} " =~ " iphoneos " ]]; then
    ln -sf "$SRCROOT/../../../../../shared/build/fat-framework/release/shared.framework" "$SRCROOT/../../../classes/apple/iosApp/build/Frameworks/shared.framework"
fi
if [ "$CONFIGURATION" = "Release" ] && [ "$ARCHS" = "x86_64" ] && [[ " ${SUPPORTED_PLATFORMS[@]} " =~ " iphonesimulator " ]]; then
    ln -sf "$SRCROOT/../../../../../shared/build/fat-framework/release/shared.framework" "$SRCROOT/../../../classes/apple/iosApp/build/Frameworks/shared.framework"
fi

