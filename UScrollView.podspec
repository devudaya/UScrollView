#
# Be sure to run `pod lib lint UScrollView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UScrollView'
  s.version          = '0.1.3'
  s.summary          = 'UScrollView is a UISrollview in oneline of code'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
'UscrollView is an awesome pod aimed to make yor life easier around UIScrollViews.'
                       DESC

  s.homepage         = 'https://github.com/devudaya/UScrollView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'devudaya' => 'niroshan127@gmail.com' }
  s.source           = { :git => 'https://github.com/devudaya/UScrollView.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/udayansk'

  s.ios.deployment_target = '12.0'

  s.source_files = 'Source/**/*.swift'
  s.swift_version = '5.0'
  s.platforms = {
         "ios": "12.0"
     }
  
  # s.resource_bundles = {
  #   'UScrollView' => ['UScrollView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.dependency 'TinyConstraints', '~> 4.0.0'
end
