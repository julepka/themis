mkdir output
mkdir output/archives
mkdir output/iphoneos
# mkdir output/macosx

xcodebuild archive \
-scheme "Themis (iOS)" \
-destination="iOS" \
-archivePath output/archives/ios.xcarchive \
-derivedDataPath output/iphoneos \
-sdk iphoneos \
SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

xcodebuild archive \
-scheme "Themis (iOS)" \
-destination="iOS Simulator" \
-archivePath output/archives/iossimulator.xcarchive \
-derivedDataPath output/iphoneos \
-sdk iphonesimulator \
SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

# xcodebuild archive \
# -scheme "Themis (macOS)" \
# -destination="macOS" \
# -archivePath output/archives/macosx.xcarchive \
# -derivedDataPath output/macosx \
# -sdk macosx \
# SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

xcodebuild -create-xcframework \
-framework output/archives/ios.xcarchive/Products/Library/Frameworks/themis.framework \
-framework output/archives/iossimulator.xcarchive/Products/Library/Frameworks/themis.framework \
-output output/themis.xcframework
# -framework output/archives/macosx.xcarchive/Products/Library/Frameworks/themis.framework \

# rm -rf output/archives
# rm -rf output/iphoneos
# rm -rf output/macosx

# zip -r output/themis.xcframework.zip output/themis.xcframework

# rm -rf output/themis.xcframework