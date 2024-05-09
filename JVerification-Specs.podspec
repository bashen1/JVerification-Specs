#
# Be sure to run `pod lib lint JVerification-Specs.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'JVerification-Specs'
    s.version          = '1.0.0'
    s.summary          = 'Specs for JVerification'
    s.description      = 'Specs for JVerification.'
    s.homepage         = 'https://github.com/bashen1/JVerification-Specs'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '孑愁' => 'maochunjie@gmail.com' }
    s.source           = { :git => 'https://github.com/bashen1/JVerification-Specs.git', :tag => s.version.to_s }

    s.ios.deployment_target = "11.0"

    s.frameworks = "Foundation", "CoreGraphics", "UIKit", "CoreTelephony", "AudioToolbox", "SystemConfiguration", "CoreFoundation", "CFNetwork", "AVFoundation", "CoreAudio", "Security", "CoreLocation", "MobileCoreServices", "WebKit"

    s.pod_target_xcconfig = {
      "VALID_ARCHS" => "x86_64 arm64"
    }
    s.libraries = "sqlite3.0", "c++.1", "z", "resolv"
    # s.source_files = "*.h"
    s.vendored_frameworks = "EAccountApiSDK.xcframework", "jverification-ios-3.2.1.xcframework", "OAuth.xcframework", "TYRZUISDK.xcframework"
    # s.vendored_libraries = "*.a"
    s.dependency "JCore"
end