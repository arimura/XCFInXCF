build-inner:
	xcodebuild archive \
	 -project InnerFramework/InnerFramework.xcodeproj \
	 -scheme InnerFramework \
	 -destination "generic/platform=iOS" \
	 -archivePath "archives/Inner-iOS" \
	 SKIP_INSTALL=NO \
	 BUILD_LIBRARY_FOR_DISTRIBUTION=YES
	xcodebuild archive \
	 -project InnerFramework/InnerFramework.xcodeproj \
	 -scheme InnerFramework \
	 -destination "generic/platform=iOS Simulator" \
	 -archivePath "archives/Inner-iOS-Simulator" \
	 SKIP_INSTALL=NO \
	 BUILD_LIBRARY_FOR_DISTRIBUTION=YES

clean:
	rm -rf archives/*