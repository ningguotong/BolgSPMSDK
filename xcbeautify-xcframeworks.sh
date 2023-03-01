BUILD_DIR=$PWD/xc
PROJECT=$PWD/Example/BolgSPMSDK.xcworkspace
TARGET_DIR=$PWD/archives


# Delete the old stuff
rm -Rf $TARGET_DIR

# Make the build directory
mkdir -p $BUILD_DIR
# Make the target directory
mkdir -p $TARGET_DIR

################ Build  SDK

xcodebuild archive -scheme BolgSPMSDK -workspace $PROJECT  -destination "generic/platform=iOS" -archivePath "$BUILD_DIR/BolgSPMSDK.iOS.xcarchive" SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES | xcbeautify
xcodebuild archive -scheme BolgSPMSDK -workspace $PROJECT  -destination "generic/platform=iOS Simulator" -archivePath "$BUILD_DIR/BolgSPMSDK.iOS-simulator.xcarchive" SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES | xcbeautify
 
xcodebuild -create-xcframework   -framework "$BUILD_DIR/BolgSPMSDK.iOS.xcarchive/Products/Library/Frameworks/BolgSPMSDK.framework" \
                                -framework "$BUILD_DIR/BolgSPMSDK.iOS-simulator.xcarchive/Products/Library/Frameworks/BolgSPMSDK.framework" \
                                -output "$TARGET_DIR/BolgSPMSDK.xcframework" \
                                | xcbeautify

rm -Rf $BUILD_DIR
