#
#  Be sure to run `pod spec lint ZoomSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "ZoomSDK"
  spec.version      = "4.1.32183.0910"
  spec.summary      = "Original framework for Zoom.us service"

  spec.homepage     = "https://github.com/zoom/zoom-sdk-ios"
  spec.license      = { :type => "Commercial", :file => "https://github.com/zoom/zoom-sdk-ios/blob/master/LICENSE.md" }

  spec.author             = { "Pavel Smelovsky" => "pavel.smelovsky@gmail.com" }

  spec.ios.deployment_target      = "9.0"
  spec.ios.source_files           = "MobileRTC.framework/Headers/**/*.{m}"
  spec.ios.public_header_files    = "MobileRTC.framework/Headers/**/*.{h,m,swift}"
  spec.ios.vendored_frameworks    = "MobileRTC.framework"

  spec.ios.resource = "MobileRTCResources.bundle"

  spec.source       = { :git => "https://github.com/pavelsmelovsky/ZoomSDK.git", :tag => "v#{spec.version}" }

  spec.libraries = "z", "c++", "sqlite3"
  spec.frameworks = "VideoToolbox", "CoreBluetooth", "ReplayKit", "CoreMotion"

  spec.subspec 'ShareScreen' do |subspec|
    subspec.ios.deployment_target       = "9.0"
    subspec.ios.source_files            = "MobileRTCScreenShare.framework/Headers/**/*.{m}"
    subspec.ios.public_header_files     = "MobileRTCScreenShare.framework/Headers/**/*.{h,m,swift}"
    subspec.ios.vendored_frameworks     = "MobileRTCScreenShare.framework"
  end

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
