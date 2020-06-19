#
# Be sure to run `pod lib lint Tapa.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Tapa'
  s.version          = '0.1.2'
  s.summary          = 'Make View with Tapa.'
  s.description      = 'Convenient extensions associated with UI'
  s.homepage         = 'https://github.com/wanderingfairy/Tapa'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wanderingfairy' => 'justice_@kakao.com' }
  s.source           = { :git => 'https://github.com/wanderingfairy/Tapa.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'Tapa/Classes/**/*'
  s.swift_version = '5.0'
  
  # s.resource_bundles = {
  #   'Tapa' => ['Tapa/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
