#
# Be sure to run `pod lib lint Tekit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Terra'
  s.version          = '0.1.1'
  s.summary          = 'Terra of Tek.'

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
  s.source           = {
                         :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/25152184',
                         :type => 'zip',
                         :headers => [
                           'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                           'Accept: application/octet-stream'
                         ]
                       }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  # s.source_files = 'Tekit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'Tekit' => ['Tekit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.vendored_frameworks = 'Terra.framework'

  s.public_header_files = 'Terra.framework/Headers/*.h'
  s.source_files = 'Terra.framework/Headers/*.{h, m, swift}'

  # dependency
  s.dependency 'TekCoreNetwork', '~> 0.1.32'
  s.dependency 'TekCoreService', '~> 0.1.35'
  s.dependency 'TekServiceInterfaces', '~> 0.1.35'
  s.dependency 'Janus', '~> 0.1.14'
  s.dependency 'Minerva', '~> 0.2.3'
  s.dependency "Codextended"

end