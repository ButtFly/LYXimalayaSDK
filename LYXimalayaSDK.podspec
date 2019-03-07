#
# Be sure to run `pod lib lint LYXimalayaSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LYXimalayaSDK'
  s.version          = '1.0.1'
  s.summary          = '自用喜马拉雅 sdk，喜马拉雅开放平台 http://open.ximalaya.com'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
自用喜马拉雅 sdk，喜马拉雅开放平台 http://open.ximalaya.com，便于自己开发使用
                       DESC

  s.homepage         = 'https://github.com/ButtFly/LYXimalayaSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ButtFly' => '315585758@qq.com' }
  s.source           = { :git => 'https://github.com/ButtFly/LYXimalayaSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'LYXimalayaSDK/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LYXimalayaSDK' => ['LYXimalayaSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.compiler_flags = '-ObjC'
  s.resource = 'LYXimalayaSDK/Resource/XMResource.bundle'
  s.ios.vendored_library = 'LYXimalayaSDK/Libraries/libXMOpenPlatform.a'
  s.frameworks = 'SystemConfiguration', 'CoreTelephony', 'Foundation', 'UIKit'
  s.libraries = 'z', 'sqlite3'
  s.dependency 'MBProgressHUD'
  s.dependency 'FMDB'
end
