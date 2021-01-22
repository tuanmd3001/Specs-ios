#
# Be sure to run `pod lib lint TekoTracker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TekoTracker'
  s.version          = '0.6.7'
  s.summary          = 'Tracker SDK for iOS Application'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '$(git config user.name)' => '$(git config user.email)' }
  s.source           = {
                          :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/31027766',
                          :type => 'zip',
                          :headers => [
                            'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                            'Accept: application/octet-stream'
                          ]
                        }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.platform = :ios, '10.0'

  s.static_framework = true
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.ios.deployment_target = '10.0'
  s.requires_arc = true
  s.swift_version = "5.1"
  s.prefix_header_file = false
  s.module_name = s.name
  s.frameworks = 'UIKit', 'Foundation', 'CoreData'
  
  s.vendored_frameworks = 'TekoTracker.framework'

  s.dependency 'Alamofire', '5.3.0'
  s.dependency 'DeviceKit'
  s.dependency 'ReachabilitySwift'
  s.dependency 'RxSwift'
  s.dependency 'TerraInstancesManager'

end
