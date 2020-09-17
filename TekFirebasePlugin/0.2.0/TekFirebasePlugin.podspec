#
# Be sure to run `pod lib lint FirebasePlugin.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TekFirebasePlugin'
  s.version          = '0.2.0'
  s.summary          = 'Firebase Helper Module for VnShop-project clusters'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '$(git config user.name)' => '$(git config user.email)' }
  s.source           = { :http => 'http://github.com/teko-vn/Specs-ios/releases/download/' + s.name.to_s + '-v' + s.version.to_s + '/' + s.name.to_s + '.zip' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  # s.source_files = 'Tekit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'Tekit' => ['Tekit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.vendored_frameworks = 'TekFirebasePlugin.framework'

  s.public_header_files = 'TekFirebasePlugin.framework/Headers/*.h'
  s.source_files = 'TekFirebasePlugin.framework/Headers/*.{h, m, swift}'
                    
  s.dependency 'Firebase/Auth', '~> 6.24.0'
  s.dependency 'Firebase/Crashlytics', '~> 6.24.0'
  s.dependency 'Firebase/Database', '~> 6.24.0'
  s.dependency 'Firebase/Messaging', '~> 6.24.0'
  s.dependency 'Firebase/Analytics', '~> 6.24.0'
  s.dependency 'Firebase/RemoteConfig', '~> 6.24.0'
  s.dependency 'Firebase/DynamicLinks', '~> 6.24.0'

end
