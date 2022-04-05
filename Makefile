archives/InnerFramework.xcframework:
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
	xcodebuild -create-xcframework \
	  -framework archives/Inner-iOS.xcarchive/Products/Library/Frameworks/InnerFramework.framework \
	  -framework archives/Inner-iOS-Simulator.xcarchive/Products/Library/Frameworks/InnerFramework.framework \
	  -output archives/InnerFramework.xcframework

install-inner: archives/InnerFramework.xcframework
	mv archives/InnerFramework.xcframework OuterFramework/OuterFramework/

clean:
	rm -rf archives/*