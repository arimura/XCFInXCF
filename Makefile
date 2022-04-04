build-inner:
	xcodebuild archive \
	-project InnerFramework/InnerFramework.xcodeproj \
	-scheme InnerFramework \
	-destination "generic/platform=iOS" \
	-archivePath "archive/Inner-iOS" \
	SKIP_INSTALL=NO \
	BUILD_LIBRARY_FOR_DISTRIBUTION=YES