#
# Be sure to run `pod lib lint Tekit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'TripiFlightConnector'
    s.version          = '1.0.0-dev'
    s.summary          = 'TripiFlightConnector framework'
  
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
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/28822006',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }

    s.ios.deployment_target = '10.0'
  
    # s.source_files = 'Tekit/Classes/**/*'
    
    # s.resource_bundles = {
    #   'Tekit' => ['Tekit/Assets/*.png']
    # }
  
    # s.public_header_files = 'Pod/Classes/**/*.h'
    # s.frameworks = 'UIKit', 'MapKit'
    # s.dependency 'AFNetworking', '~> 2.3'
  
    s.vendored_frameworks = 'TripiFlightConnector.framework'
  
    s.public_header_files = 'TripiFlightConnector.framework/Headers/*.h'
    s.source_files = 'TripiFlightConnector.framework/Headers/*.{h, m, swift}'

    # s.pod_target_xcconfig = {
    #   'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    # }
    # s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
    # dependency
    s.dependency 'TripiFlightKit', '2.0.0-dev'
    s.dependency 'HestiaIOS', '~> 2.1.2'
  
  end