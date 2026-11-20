#!/data/data/com.termux/files/usr/bin/bash
# Termux build (best effort). Needs Android SDK platform-33 + build-tools in $ANDROID_HOME (aarch64 tools).
pkg install -y openjdk-17 gradle aapt2 git
export ANDROID_HOME=${ANDROID_HOME:-$HOME/android-sdk}
gradle assembleDebug --no-daemon -Pandroid.aapt2FromMavenOverride=$PREFIX/bin/aapt2
echo "APK: app/build/outputs/apk/debug/app-debug.apk"
