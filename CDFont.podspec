#
# Be sure to run `pod lib lint CDFont.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.platform     = :ios, "8.0"
  s.name             = 'CDFont'
  s.version          = '0.0.1'
  s.summary          = '手机端字体适配'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
iOS不同机型字体适配，支持现在发布所有苹果机型。
                       DESC

  s.homepage         = 'https://gitlab.ttsing.com/ios/CDFont'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'cqz' => 'cqz@ttsing.com' }
  s.source           = { :git => 'git@gitlab.ttsing.com:ios/CDFont.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'


  s.source_files = 'CDFont/*.{h,m}'
  
  # s.resource_bundles = {
  #   'CDFont' => ['CDFont/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   #s.dependency 'QMUIKit/QMUICore/QMUIHelper'
end
