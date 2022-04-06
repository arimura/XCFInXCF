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

archives/OuterFramework.xcframework: archives/InnerFramework.xcframework
	xcodebuild archive \
	 -project OuterFramework/OuterFramework.xcodeproj \
	 -scheme OuterFramework \
	 -destination "generic/platform=iOS" \
	 -archivePath "archives/Outer-iOS" \
	 SKIP_INSTALL=NO \
	 BUILD_LIBRARY_FOR_DISTRIBUTION=YES
	xcodebuild archive \
	 -project OuterFramework/OuterFramework.xcodeproj \
	 -scheme OuterFramework \
	 -destination "generic/platform=iOS Simulator" \
	 -archivePath "archives/Outer-iOS-Simulator" \
	 SKIP_INSTALL=NO \
	 BUILD_LIBRARY_FOR_DISTRIBUTION=YES
	xcodebuild -create-xcframework \
	  -framework archives/Outer-iOS.xcarchive/Products/Library/Frameworks/OuterFramework.framework \
	  -framework archives/Outer-iOS-Simulator.xcarchive/Products/Library/Frameworks/OuterFramework.framework \
	  -output archives/OuterFramework.xcframework

clean:
	rm -rf archives/*